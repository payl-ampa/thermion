import 'dart:async';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'filament_controller.dart';

enum GestureType { RotateCamera, PanCamera, PanBackground }

class FilamentGestureDetector extends StatefulWidget {
  final Widget? child;
  final FilamentController controller;
  final bool showControlOverlay;
  final bool enableControls;
  final double zoomDelta;

  const FilamentGestureDetector(
      {Key? key,
      required this.controller,
      this.child,
      this.showControlOverlay = false,
      this.enableControls = true,
      this.zoomDelta = 1})
      : super(key: key);

  @override
  State<StatefulWidget> createState() => _FilamentGestureDetectorState();
}

class _FilamentGestureDetectorState extends State<FilamentGestureDetector> {
  GestureType gestureType = GestureType.PanCamera;

  final _icons = {
    GestureType.PanBackground: Icons.image,
    GestureType.PanCamera: Icons.pan_tool,
    GestureType.RotateCamera: Icons.rotate_90_degrees_ccw
  };

  bool _rotating = false;

  // to avoid duplicating code for pan/rotate (panStart, panUpdate, panEnd, rotateStart, rotateUpdate etc)
  // we have only a single function for start/update/end.
  // when the gesture type is changed, these properties are updated to point to the correct function.
  late Function(double x, double y) _functionStart;
  late Function(double x, double y) _functionUpdate;
  late Function() _functionEnd;

  @override
  void initState() {
    _setFunction();
    super.initState();
  }

  void _setFunction() {
    switch (gestureType) {
      case GestureType.RotateCamera:
        _functionStart = widget.controller.rotateStart;
        _functionUpdate = widget.controller.rotateUpdate;
        _functionEnd = widget.controller.rotateEnd;
        break;
      case GestureType.PanCamera:
        _functionStart = widget.controller.panStart;
        _functionUpdate = widget.controller.panUpdate;
        _functionEnd = widget.controller.panEnd;
        break;
      // TODO
      case GestureType.PanBackground:
        _functionStart = (x, y) async {};
        _functionUpdate = (x, y) async {};
        _functionEnd = () async {};
    }
  }

  @override
  void didUpdateWidget(FilamentGestureDetector oldWidget) {
    if (widget.showControlOverlay != oldWidget.showControlOverlay ||
        widget.enableControls != oldWidget.enableControls) {
      setState(() {});
    }

    super.didUpdateWidget(oldWidget);
  }

  Timer? _scrollTimer;

  Widget _desktop() {
    return Listener(
        onPointerSignal: !widget.enableControls
            ? null
            : (pointerSignal) async {
                // scroll-wheel zoom on desktop
                if (pointerSignal is PointerScrollEvent) {
                  _scrollTimer?.cancel();
                  widget.controller.zoomBegin();
                  widget.controller.zoomUpdate(pointerSignal.scrollDelta.dy > 0
                      ? widget.zoomDelta
                      : -widget.zoomDelta);
                  _scrollTimer = Timer(Duration(milliseconds: 100), () {
                    widget.controller.zoomEnd();
                    _scrollTimer = null;
                  });
                }
              },
        onPointerPanZoomStart: !widget.enableControls ? null : (pzs) {},
        onPointerDown: !widget.enableControls
            ? null
            : (d) async {
                if (d.buttons == kTertiaryButton || _rotating) {
                  print("Starting at ${d.position}");
                  widget.controller.rotateStart(
                      d.position.dx * 2.0,
                      d.position.dy *
                          2.0); // multiply by 2.0 to account for pixel density, TODO don't hardcode
                } else {
                  widget.controller
                      .panStart(d.localPosition.dx, d.localPosition.dy);
                }
              },
        onPointerMove: !widget.enableControls
            ? null
            : (PointerMoveEvent d) async {
                if (d.buttons == kTertiaryButton || _rotating) {
                  widget.controller
                      .rotateUpdate(d.position.dx * 2.0, d.position.dy * 2.0);
                } else {
                  widget.controller
                      .panUpdate(d.localPosition.dx, d.localPosition.dy);
                }
              },
        onPointerUp: !widget.enableControls
            ? null
            : (d) async {
                if (d.buttons == kTertiaryButton || _rotating) {
                  widget.controller.rotateEnd();
                } else {
                  widget.controller.panEnd();
                }
              },
        child: widget.child);
  }

  bool _scaling = false;
  double _lastScale = 0;
  DateTime _lastUpdate = DateTime.now();
  Widget _mobile() {
    return GestureDetector(
        behavior: HitTestBehavior.opaque,
        onDoubleTap: () {
          _rotating = !_rotating;
        },
        onScaleStart: !widget.enableControls
            ? null
            : (d) async {
                if (d.pointerCount == 2) {
                  _lastScale = 0;
                  _scaling = true;
                  widget.controller.zoomBegin();
                } else if (!_scaling) {
                  if (_rotating) {
                    widget.controller
                        .rotateStart(d.focalPoint.dx, d.focalPoint.dy);
                  } else {
                    widget.controller
                        .panStart(d.focalPoint.dx, d.focalPoint.dy);
                  }
                }
              },
        onScaleEnd: !widget.enableControls
            ? null
            : (d) async {
                if (d.pointerCount == 2) {
                  widget.controller.zoomEnd();
                  _lastScale = 0;
                  _scaling = false;
                } else if (!_scaling) {
                  if (_rotating) {
                    widget.controller.rotateEnd();
                  } else {
                    widget.controller.panEnd();
                  }
                }
              },
        onScaleUpdate: !widget.enableControls
            ? null
            : (ScaleUpdateDetails d) async {
                if (d.pointerCount == 2) {
                  // var scale = d.horizontalScale - _lastScale;
                  // print(scale);
                  widget.controller
                      .zoomUpdate(d.horizontalScale > 1 ? 0.1 : -0.1);
                  _lastScale = d.horizontalScale;
                } else if (!_scaling) {
                  if (_rotating) {
                    widget.controller
                        .rotateUpdate(d.focalPoint.dx, d.focalPoint.dy);
                  } else {
                    widget.controller
                        .panUpdate(d.focalPoint.dx, d.focalPoint.dy);
                  }
                }
              },
        child: widget.child);
  }

  @override
  Widget build(BuildContext context) {
    late Widget controls;
    if (kIsWeb) {
      controls = Container();
    } else if (Platform.isLinux || Platform.isWindows || Platform.isMacOS) {
      controls = _desktop();
    } else {
      controls = _mobile();
    }

    return Stack(children: [
      Positioned.fill(
          // pinch zoom on mobile
          // couldn't find any equivalent for pointerCount in Listener so we use two widgets:
          // - outer is a GestureDetector only for pinch zoom
          // - inner is a Listener for all other gestures (including scroll zoom on desktop)
          child: controls),
      widget.showControlOverlay
          ? Align(
              alignment: Alignment.bottomRight,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    var curIdx = GestureType.values.indexOf(gestureType);
                    var nextIdx = curIdx == GestureType.values.length - 1
                        ? 0
                        : curIdx + 1;
                    gestureType = GestureType.values[nextIdx];
                    _setFunction();
                  });
                },
                child: Container(
                    padding: const EdgeInsets.all(50),
                    child: Icon(_icons[gestureType], color: Colors.green)),
              ))
          : Container()
    ]);
  }
}
