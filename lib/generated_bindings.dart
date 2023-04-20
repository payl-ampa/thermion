// AUTO GENERATED FILE, DO NOT EDIT.
//
// Generated by `package:ffigen`.
// ignore_for_file: type=lint
import 'dart:ffi' as ffi;

class NativeLibrary {
  /// Holds the symbol lookup function.
  final ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
      _lookup;

  /// The symbols are looked up in [dynamicLibrary].
  NativeLibrary(ffi.DynamicLibrary dynamicLibrary)
      : _lookup = dynamicLibrary.lookup;

  /// The symbols are looked up with [lookup].
  NativeLibrary.fromLookup(
      ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
          lookup)
      : _lookup = lookup;

  int init_dart_api_dl(
    ffi.Pointer<ffi.Void> data,
  ) {
    return _init_dart_api_dl(
      data,
    );
  }

  late final _init_dart_api_dlPtr =
      _lookup<ffi.NativeFunction<ffi.IntPtr Function(ffi.Pointer<ffi.Void>)>>(
          'init_dart_api_dl');
  late final _init_dart_api_dl =
      _init_dart_api_dlPtr.asFunction<int Function(ffi.Pointer<ffi.Void>)>();

  void register_filament_port(
    int port,
  ) {
    return _register_filament_port(
      port,
    );
  }

  late final _register_filament_portPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Int)>>(
          'register_filament_port');
  late final _register_filament_port =
      _register_filament_portPtr.asFunction<void Function(int)>();

  ffi.Pointer<ffi.Void> create_filament_viewer(
    ffi.Pointer<ffi.Void> context,
    ffi.Pointer<
            ffi.NativeFunction<ResourceBuffer Function(ffi.Pointer<ffi.Char>)>>
        loadResource,
    ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Uint32)>> freeResource,
  ) {
    return _create_filament_viewer(
      context,
      loadResource,
      freeResource,
    );
  }

  late final _create_filament_viewerPtr = _lookup<
          ffi.NativeFunction<
              ffi.Pointer<ffi.Void> Function(
                  ffi.Pointer<ffi.Void>,
                  ffi.Pointer<
                      ffi.NativeFunction<
                          ResourceBuffer Function(ffi.Pointer<ffi.Char>)>>,
                  ffi.Pointer<
                      ffi.NativeFunction<ffi.Void Function(ffi.Uint32)>>)>>(
      'create_filament_viewer');
  late final _create_filament_viewer = _create_filament_viewerPtr.asFunction<
      ffi.Pointer<ffi.Void> Function(
          ffi.Pointer<ffi.Void>,
          ffi.Pointer<
              ffi.NativeFunction<
                  ResourceBuffer Function(ffi.Pointer<ffi.Char>)>>,
          ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Uint32)>>)>();

  renderCallback make_render_callback() {
    return _make_render_callback();
  }

  late final _make_render_callbackPtr =
      _lookup<ffi.NativeFunction<renderCallback Function()>>(
          'make_render_callback');
  late final _make_render_callback =
      _make_render_callbackPtr.asFunction<renderCallback Function()>();

  void delete_filament_viewer(
    ffi.Pointer<ffi.Void> viewer,
  ) {
    return _delete_filament_viewer(
      viewer,
    );
  }

  late final _delete_filament_viewerPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
          'delete_filament_viewer');
  late final _delete_filament_viewer = _delete_filament_viewerPtr
      .asFunction<void Function(ffi.Pointer<ffi.Void>)>();

  ffi.Pointer<ffi.Void> get_asset_manager(
    ffi.Pointer<ffi.Void> viewer,
  ) {
    return _get_asset_manager(
      viewer,
    );
  }

  late final _get_asset_managerPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<ffi.Void> Function(
              ffi.Pointer<ffi.Void>)>>('get_asset_manager');
  late final _get_asset_manager = _get_asset_managerPtr
      .asFunction<ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>();

  void create_render_target(
    ffi.Pointer<ffi.Void> viewer,
    int textureId,
    int width,
    int height,
  ) {
    return _create_render_target(
      viewer,
      textureId,
      width,
      height,
    );
  }

  late final _create_render_targetPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Uint32, ffi.Uint32,
              ffi.Uint32)>>('create_render_target');
  late final _create_render_target = _create_render_targetPtr
      .asFunction<void Function(ffi.Pointer<ffi.Void>, int, int, int)>();

  void clear_background_image(
    ffi.Pointer<ffi.Void> viewer,
  ) {
    return _clear_background_image(
      viewer,
    );
  }

  late final _clear_background_imagePtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
          'clear_background_image');
  late final _clear_background_image = _clear_background_imagePtr
      .asFunction<void Function(ffi.Pointer<ffi.Void>)>();

  void set_background_image(
    ffi.Pointer<ffi.Void> viewer,
    ffi.Pointer<ffi.Char> path,
  ) {
    return _set_background_image(
      viewer,
      path,
    );
  }

  late final _set_background_imagePtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Pointer<ffi.Void>,
              ffi.Pointer<ffi.Char>)>>('set_background_image');
  late final _set_background_image = _set_background_imagePtr.asFunction<
      void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Char>)>();

  void set_background_image_position(
    ffi.Pointer<ffi.Void> viewer,
    double x,
    double y,
    int clamp,
  ) {
    return _set_background_image_position(
      viewer,
      x,
      y,
      clamp,
    );
  }

  late final _set_background_image_positionPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Float, ffi.Float,
              ffi.Int)>>('set_background_image_position');
  late final _set_background_image_position = _set_background_image_positionPtr
      .asFunction<void Function(ffi.Pointer<ffi.Void>, double, double, int)>();

  void set_background_color(
    ffi.Pointer<ffi.Void> viewer,
    double r,
    double g,
    double b,
    double a,
  ) {
    return _set_background_color(
      viewer,
      r,
      g,
      b,
      a,
    );
  }

  late final _set_background_colorPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Float, ffi.Float,
              ffi.Float, ffi.Float)>>('set_background_color');
  late final _set_background_color = _set_background_colorPtr.asFunction<
      void Function(ffi.Pointer<ffi.Void>, double, double, double, double)>();

  void load_skybox(
    ffi.Pointer<ffi.Void> viewer,
    ffi.Pointer<ffi.Char> skyboxPath,
  ) {
    return _load_skybox(
      viewer,
      skyboxPath,
    );
  }

  late final _load_skyboxPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(
              ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Char>)>>('load_skybox');
  late final _load_skybox = _load_skyboxPtr.asFunction<
      void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Char>)>();

  void load_ibl(
    ffi.Pointer<ffi.Void> viewer,
    ffi.Pointer<ffi.Char> iblPath,
    double intensity,
  ) {
    return _load_ibl(
      viewer,
      iblPath,
      intensity,
    );
  }

  late final _load_iblPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Char>,
              ffi.Float)>>('load_ibl');
  late final _load_ibl = _load_iblPtr.asFunction<
      void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Char>, double)>();

  void remove_skybox(
    ffi.Pointer<ffi.Void> viewer,
  ) {
    return _remove_skybox(
      viewer,
    );
  }

  late final _remove_skyboxPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
          'remove_skybox');
  late final _remove_skybox =
      _remove_skyboxPtr.asFunction<void Function(ffi.Pointer<ffi.Void>)>();

  void remove_ibl(
    ffi.Pointer<ffi.Void> viewer,
  ) {
    return _remove_ibl(
      viewer,
    );
  }

  late final _remove_iblPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
          'remove_ibl');
  late final _remove_ibl =
      _remove_iblPtr.asFunction<void Function(ffi.Pointer<ffi.Void>)>();

  int add_light(
    ffi.Pointer<ffi.Void> viewer,
    int type,
    double colour,
    double intensity,
    double posX,
    double posY,
    double posZ,
    double dirX,
    double dirY,
    double dirZ,
    int shadows,
  ) {
    return _add_light(
      viewer,
      type,
      colour,
      intensity,
      posX,
      posY,
      posZ,
      dirX,
      dirY,
      dirZ,
      shadows,
    );
  }

  late final _add_lightPtr = _lookup<
      ffi.NativeFunction<
          EntityId Function(
              ffi.Pointer<ffi.Void>,
              ffi.Uint8,
              ffi.Float,
              ffi.Float,
              ffi.Float,
              ffi.Float,
              ffi.Float,
              ffi.Float,
              ffi.Float,
              ffi.Float,
              ffi.Int)>>('add_light');
  late final _add_light = _add_lightPtr.asFunction<
      int Function(ffi.Pointer<ffi.Void>, int, double, double, double, double,
          double, double, double, double, int)>();

  void remove_light(
    ffi.Pointer<ffi.Void> viewer,
    int entityId,
  ) {
    return _remove_light(
      viewer,
      entityId,
    );
  }

  late final _remove_lightPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Pointer<ffi.Void>, EntityId)>>('remove_light');
  late final _remove_light =
      _remove_lightPtr.asFunction<void Function(ffi.Pointer<ffi.Void>, int)>();

  void clear_lights(
    ffi.Pointer<ffi.Void> viewer,
  ) {
    return _clear_lights(
      viewer,
    );
  }

  late final _clear_lightsPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
          'clear_lights');
  late final _clear_lights =
      _clear_lightsPtr.asFunction<void Function(ffi.Pointer<ffi.Void>)>();

  int load_glb(
    ffi.Pointer<ffi.Void> assetManager,
    ffi.Pointer<ffi.Char> assetPath,
    int unlit,
  ) {
    return _load_glb(
      assetManager,
      assetPath,
      unlit,
    );
  }

  late final _load_glbPtr = _lookup<
      ffi.NativeFunction<
          EntityId Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Char>,
              ffi.Int)>>('load_glb');
  late final _load_glb = _load_glbPtr.asFunction<
      int Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Char>, int)>();

  int load_gltf(
    ffi.Pointer<ffi.Void> assetManager,
    ffi.Pointer<ffi.Char> assetPath,
    ffi.Pointer<ffi.Char> relativePath,
  ) {
    return _load_gltf(
      assetManager,
      assetPath,
      relativePath,
    );
  }

  late final _load_gltfPtr = _lookup<
      ffi.NativeFunction<
          EntityId Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Char>,
              ffi.Pointer<ffi.Char>)>>('load_gltf');
  late final _load_gltf = _load_gltfPtr.asFunction<
      int Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Char>,
          ffi.Pointer<ffi.Char>)>();

  int set_camera(
    ffi.Pointer<ffi.Void> viewer,
    int asset,
    ffi.Pointer<ffi.Char> nodeName,
  ) {
    return _set_camera(
      viewer,
      asset,
      nodeName,
    );
  }

  late final _set_cameraPtr = _lookup<
      ffi.NativeFunction<
          ffi.Int Function(ffi.Pointer<ffi.Void>, EntityId,
              ffi.Pointer<ffi.Char>)>>('set_camera');
  late final _set_camera = _set_cameraPtr.asFunction<
      int Function(ffi.Pointer<ffi.Void>, int, ffi.Pointer<ffi.Char>)>();

  void render(
    ffi.Pointer<ffi.Void> viewer,
    int frameTimeInNanos,
  ) {
    return _render(
      viewer,
      frameTimeInNanos,
    );
  }

  late final _renderPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Uint64)>>('render');
  late final _render =
      _renderPtr.asFunction<void Function(ffi.Pointer<ffi.Void>, int)>();

  void create_swap_chain(
    ffi.Pointer<ffi.Void> viewer,
    ffi.Pointer<ffi.Void> surface,
    int width,
    int height,
  ) {
    return _create_swap_chain(
      viewer,
      surface,
      width,
      height,
    );
  }

  late final _create_swap_chainPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>,
              ffi.Uint32, ffi.Uint32)>>('create_swap_chain');
  late final _create_swap_chain = _create_swap_chainPtr.asFunction<
      void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>, int, int)>();

  void destroy_swap_chain(
    ffi.Pointer<ffi.Void> viewer,
  ) {
    return _destroy_swap_chain(
      viewer,
    );
  }

  late final _destroy_swap_chainPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
          'destroy_swap_chain');
  late final _destroy_swap_chain =
      _destroy_swap_chainPtr.asFunction<void Function(ffi.Pointer<ffi.Void>)>();

  void set_frame_interval(
    ffi.Pointer<ffi.Void> viewer,
    double interval,
  ) {
    return _set_frame_interval(
      viewer,
      interval,
    );
  }

  late final _set_frame_intervalPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(
              ffi.Pointer<ffi.Void>, ffi.Float)>>('set_frame_interval');
  late final _set_frame_interval = _set_frame_intervalPtr
      .asFunction<void Function(ffi.Pointer<ffi.Void>, double)>();

  ffi.Pointer<ffi.Void> get_renderer(
    ffi.Pointer<ffi.Void> viewer,
  ) {
    return _get_renderer(
      viewer,
    );
  }

  late final _get_rendererPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<ffi.Void> Function(
              ffi.Pointer<ffi.Void>)>>('get_renderer');
  late final _get_renderer = _get_rendererPtr
      .asFunction<ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>();

  void update_viewport_and_camera_projection(
    ffi.Pointer<ffi.Void> viewer,
    int width,
    int height,
    double scaleFactor,
  ) {
    return _update_viewport_and_camera_projection(
      viewer,
      width,
      height,
      scaleFactor,
    );
  }

  late final _update_viewport_and_camera_projectionPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Int, ffi.Int,
              ffi.Float)>>('update_viewport_and_camera_projection');
  late final _update_viewport_and_camera_projection =
      _update_viewport_and_camera_projectionPtr
          .asFunction<void Function(ffi.Pointer<ffi.Void>, int, int, double)>();

  void scroll_begin(
    ffi.Pointer<ffi.Void> viewer,
  ) {
    return _scroll_begin(
      viewer,
    );
  }

  late final _scroll_beginPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
          'scroll_begin');
  late final _scroll_begin =
      _scroll_beginPtr.asFunction<void Function(ffi.Pointer<ffi.Void>)>();

  void scroll_update(
    ffi.Pointer<ffi.Void> viewer,
    double x,
    double y,
    double z,
  ) {
    return _scroll_update(
      viewer,
      x,
      y,
      z,
    );
  }

  late final _scroll_updatePtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Float, ffi.Float,
              ffi.Float)>>('scroll_update');
  late final _scroll_update = _scroll_updatePtr.asFunction<
      void Function(ffi.Pointer<ffi.Void>, double, double, double)>();

  void scroll_end(
    ffi.Pointer<ffi.Void> viewer,
  ) {
    return _scroll_end(
      viewer,
    );
  }

  late final _scroll_endPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
          'scroll_end');
  late final _scroll_end =
      _scroll_endPtr.asFunction<void Function(ffi.Pointer<ffi.Void>)>();

  void grab_begin(
    ffi.Pointer<ffi.Void> viewer,
    double x,
    double y,
    int pan,
  ) {
    return _grab_begin(
      viewer,
      x,
      y,
      pan,
    );
  }

  late final _grab_beginPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Float, ffi.Float,
              ffi.Int)>>('grab_begin');
  late final _grab_begin = _grab_beginPtr
      .asFunction<void Function(ffi.Pointer<ffi.Void>, double, double, int)>();

  void grab_update(
    ffi.Pointer<ffi.Void> viewer,
    double x,
    double y,
  ) {
    return _grab_update(
      viewer,
      x,
      y,
    );
  }

  late final _grab_updatePtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(
              ffi.Pointer<ffi.Void>, ffi.Float, ffi.Float)>>('grab_update');
  late final _grab_update = _grab_updatePtr
      .asFunction<void Function(ffi.Pointer<ffi.Void>, double, double)>();

  void grab_end(
    ffi.Pointer<ffi.Void> viewer,
  ) {
    return _grab_end(
      viewer,
    );
  }

  late final _grab_endPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
          'grab_end');
  late final _grab_end =
      _grab_endPtr.asFunction<void Function(ffi.Pointer<ffi.Void>)>();

  void apply_weights(
    ffi.Pointer<ffi.Void> assetManager,
    int asset,
    ffi.Pointer<ffi.Char> entityName,
    ffi.Pointer<ffi.Float> weights,
    int count,
  ) {
    return _apply_weights(
      assetManager,
      asset,
      entityName,
      weights,
      count,
    );
  }

  late final _apply_weightsPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(
              ffi.Pointer<ffi.Void>,
              EntityId,
              ffi.Pointer<ffi.Char>,
              ffi.Pointer<ffi.Float>,
              ffi.Int)>>('apply_weights');
  late final _apply_weights = _apply_weightsPtr.asFunction<
      void Function(ffi.Pointer<ffi.Void>, int, ffi.Pointer<ffi.Char>,
          ffi.Pointer<ffi.Float>, int)>();

  void set_morph_animation(
    ffi.Pointer<ffi.Void> assetManager,
    int asset,
    ffi.Pointer<ffi.Char> entityName,
    ffi.Pointer<ffi.Float> morphData,
    int numMorphWeights,
    int numFrames,
    double frameLengthInMs,
  ) {
    return _set_morph_animation(
      assetManager,
      asset,
      entityName,
      morphData,
      numMorphWeights,
      numFrames,
      frameLengthInMs,
    );
  }

  late final _set_morph_animationPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(
              ffi.Pointer<ffi.Void>,
              EntityId,
              ffi.Pointer<ffi.Char>,
              ffi.Pointer<ffi.Float>,
              ffi.Int,
              ffi.Int,
              ffi.Float)>>('set_morph_animation');
  late final _set_morph_animation = _set_morph_animationPtr.asFunction<
      void Function(ffi.Pointer<ffi.Void>, int, ffi.Pointer<ffi.Char>,
          ffi.Pointer<ffi.Float>, int, int, double)>();

  void set_bone_animation(
    ffi.Pointer<ffi.Void> assetManager,
    int asset,
    int length,
    ffi.Pointer<ffi.Pointer<ffi.Char>> boneNames,
    ffi.Pointer<ffi.Pointer<ffi.Char>> meshNames,
    ffi.Pointer<ffi.Float> frameData,
    int numFrames,
    double frameLengthInMs,
  ) {
    return _set_bone_animation(
      assetManager,
      asset,
      length,
      boneNames,
      meshNames,
      frameData,
      numFrames,
      frameLengthInMs,
    );
  }

  late final _set_bone_animationPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(
              ffi.Pointer<ffi.Void>,
              EntityId,
              ffi.Int,
              ffi.Pointer<ffi.Pointer<ffi.Char>>,
              ffi.Pointer<ffi.Pointer<ffi.Char>>,
              ffi.Pointer<ffi.Float>,
              ffi.Int,
              ffi.Float)>>('set_bone_animation');
  late final _set_bone_animation = _set_bone_animationPtr.asFunction<
      void Function(
          ffi.Pointer<ffi.Void>,
          int,
          int,
          ffi.Pointer<ffi.Pointer<ffi.Char>>,
          ffi.Pointer<ffi.Pointer<ffi.Char>>,
          ffi.Pointer<ffi.Float>,
          int,
          double)>();

  void play_animation(
    ffi.Pointer<ffi.Void> assetManager,
    int asset,
    int index,
    int loop,
    int reverse,
  ) {
    return _play_animation(
      assetManager,
      asset,
      index,
      loop,
      reverse,
    );
  }

  late final _play_animationPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Pointer<ffi.Void>, EntityId, ffi.Int, ffi.Int,
              ffi.Int)>>('play_animation');
  late final _play_animation = _play_animationPtr
      .asFunction<void Function(ffi.Pointer<ffi.Void>, int, int, int, int)>();

  void set_animation_frame(
    ffi.Pointer<ffi.Void> assetManager,
    int asset,
    int animationIndex,
    int animationFrame,
  ) {
    return _set_animation_frame(
      assetManager,
      asset,
      animationIndex,
      animationFrame,
    );
  }

  late final _set_animation_framePtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Pointer<ffi.Void>, EntityId, ffi.Int,
              ffi.Int)>>('set_animation_frame');
  late final _set_animation_frame = _set_animation_framePtr
      .asFunction<void Function(ffi.Pointer<ffi.Void>, int, int, int)>();

  void stop_animation(
    ffi.Pointer<ffi.Void> assetManager,
    int asset,
    int index,
  ) {
    return _stop_animation(
      assetManager,
      asset,
      index,
    );
  }

  late final _stop_animationPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(
              ffi.Pointer<ffi.Void>, EntityId, ffi.Int)>>('stop_animation');
  late final _stop_animation = _stop_animationPtr
      .asFunction<void Function(ffi.Pointer<ffi.Void>, int, int)>();

  int get_animation_count(
    ffi.Pointer<ffi.Void> assetManager,
    int asset,
  ) {
    return _get_animation_count(
      assetManager,
      asset,
    );
  }

  late final _get_animation_countPtr = _lookup<
      ffi.NativeFunction<
          ffi.Int Function(
              ffi.Pointer<ffi.Void>, EntityId)>>('get_animation_count');
  late final _get_animation_count = _get_animation_countPtr
      .asFunction<int Function(ffi.Pointer<ffi.Void>, int)>();

  void get_animation_name(
    ffi.Pointer<ffi.Void> assetManager,
    int asset,
    ffi.Pointer<ffi.Char> outPtr,
    int index,
  ) {
    return _get_animation_name(
      assetManager,
      asset,
      outPtr,
      index,
    );
  }

  late final _get_animation_namePtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Pointer<ffi.Void>, EntityId,
              ffi.Pointer<ffi.Char>, ffi.Int)>>('get_animation_name');
  late final _get_animation_name = _get_animation_namePtr.asFunction<
      void Function(ffi.Pointer<ffi.Void>, int, ffi.Pointer<ffi.Char>, int)>();

  void get_morph_target_name(
    ffi.Pointer<ffi.Void> assetManager,
    int asset,
    ffi.Pointer<ffi.Char> meshName,
    ffi.Pointer<ffi.Char> outPtr,
    int index,
  ) {
    return _get_morph_target_name(
      assetManager,
      asset,
      meshName,
      outPtr,
      index,
    );
  }

  late final _get_morph_target_namePtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(
              ffi.Pointer<ffi.Void>,
              EntityId,
              ffi.Pointer<ffi.Char>,
              ffi.Pointer<ffi.Char>,
              ffi.Int)>>('get_morph_target_name');
  late final _get_morph_target_name = _get_morph_target_namePtr.asFunction<
      void Function(ffi.Pointer<ffi.Void>, int, ffi.Pointer<ffi.Char>,
          ffi.Pointer<ffi.Char>, int)>();

  int get_morph_target_name_count(
    ffi.Pointer<ffi.Void> assetManager,
    int asset,
    ffi.Pointer<ffi.Char> meshName,
  ) {
    return _get_morph_target_name_count(
      assetManager,
      asset,
      meshName,
    );
  }

  late final _get_morph_target_name_countPtr = _lookup<
      ffi.NativeFunction<
          ffi.Int Function(ffi.Pointer<ffi.Void>, EntityId,
              ffi.Pointer<ffi.Char>)>>('get_morph_target_name_count');
  late final _get_morph_target_name_count =
      _get_morph_target_name_countPtr.asFunction<
          int Function(ffi.Pointer<ffi.Void>, int, ffi.Pointer<ffi.Char>)>();

  void remove_asset(
    ffi.Pointer<ffi.Void> viewer,
    int asset,
  ) {
    return _remove_asset(
      viewer,
      asset,
    );
  }

  late final _remove_assetPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Pointer<ffi.Void>, EntityId)>>('remove_asset');
  late final _remove_asset =
      _remove_assetPtr.asFunction<void Function(ffi.Pointer<ffi.Void>, int)>();

  void clear_assets(
    ffi.Pointer<ffi.Void> viewer,
  ) {
    return _clear_assets(
      viewer,
    );
  }

  late final _clear_assetsPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
          'clear_assets');
  late final _clear_assets =
      _clear_assetsPtr.asFunction<void Function(ffi.Pointer<ffi.Void>)>();

  void load_texture(
    ffi.Pointer<ffi.Void> assetManager,
    int asset,
    ffi.Pointer<ffi.Char> assetPath,
    int renderableIndex,
  ) {
    return _load_texture(
      assetManager,
      asset,
      assetPath,
      renderableIndex,
    );
  }

  late final _load_texturePtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Pointer<ffi.Void>, EntityId,
              ffi.Pointer<ffi.Char>, ffi.Int)>>('load_texture');
  late final _load_texture = _load_texturePtr.asFunction<
      void Function(ffi.Pointer<ffi.Void>, int, ffi.Pointer<ffi.Char>, int)>();

  void set_texture(
    ffi.Pointer<ffi.Void> assetManager,
    int asset,
  ) {
    return _set_texture(
      assetManager,
      asset,
    );
  }

  late final _set_texturePtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Pointer<ffi.Void>, EntityId)>>('set_texture');
  late final _set_texture =
      _set_texturePtr.asFunction<void Function(ffi.Pointer<ffi.Void>, int)>();

  void transform_to_unit_cube(
    ffi.Pointer<ffi.Void> assetManager,
    int asset,
  ) {
    return _transform_to_unit_cube(
      assetManager,
      asset,
    );
  }

  late final _transform_to_unit_cubePtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(
              ffi.Pointer<ffi.Void>, EntityId)>>('transform_to_unit_cube');
  late final _transform_to_unit_cube = _transform_to_unit_cubePtr
      .asFunction<void Function(ffi.Pointer<ffi.Void>, int)>();

  void set_position(
    ffi.Pointer<ffi.Void> assetManager,
    int asset,
    double x,
    double y,
    double z,
  ) {
    return _set_position(
      assetManager,
      asset,
      x,
      y,
      z,
    );
  }

  late final _set_positionPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Pointer<ffi.Void>, EntityId, ffi.Float,
              ffi.Float, ffi.Float)>>('set_position');
  late final _set_position = _set_positionPtr.asFunction<
      void Function(ffi.Pointer<ffi.Void>, int, double, double, double)>();

  void set_rotation(
    ffi.Pointer<ffi.Void> assetManager,
    int asset,
    double rads,
    double x,
    double y,
    double z,
  ) {
    return _set_rotation(
      assetManager,
      asset,
      rads,
      x,
      y,
      z,
    );
  }

  late final _set_rotationPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Pointer<ffi.Void>, EntityId, ffi.Float,
              ffi.Float, ffi.Float, ffi.Float)>>('set_rotation');
  late final _set_rotation = _set_rotationPtr.asFunction<
      void Function(
          ffi.Pointer<ffi.Void>, int, double, double, double, double)>();

  void set_scale(
    ffi.Pointer<ffi.Void> assetManager,
    int asset,
    double scale,
  ) {
    return _set_scale(
      assetManager,
      asset,
      scale,
    );
  }

  late final _set_scalePtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(
              ffi.Pointer<ffi.Void>, EntityId, ffi.Float)>>('set_scale');
  late final _set_scale = _set_scalePtr
      .asFunction<void Function(ffi.Pointer<ffi.Void>, int, double)>();

  void set_camera_exposure(
    ffi.Pointer<ffi.Void> viewer,
    double aperture,
    double shutterSpeed,
    double sensitivity,
  ) {
    return _set_camera_exposure(
      viewer,
      aperture,
      shutterSpeed,
      sensitivity,
    );
  }

  late final _set_camera_exposurePtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Float, ffi.Float,
              ffi.Float)>>('set_camera_exposure');
  late final _set_camera_exposure = _set_camera_exposurePtr.asFunction<
      void Function(ffi.Pointer<ffi.Void>, double, double, double)>();

  void set_camera_position(
    ffi.Pointer<ffi.Void> viewer,
    double x,
    double y,
    double z,
  ) {
    return _set_camera_position(
      viewer,
      x,
      y,
      z,
    );
  }

  late final _set_camera_positionPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Float, ffi.Float,
              ffi.Float)>>('set_camera_position');
  late final _set_camera_position = _set_camera_positionPtr.asFunction<
      void Function(ffi.Pointer<ffi.Void>, double, double, double)>();

  void set_camera_rotation(
    ffi.Pointer<ffi.Void> viewer,
    double rads,
    double x,
    double y,
    double z,
  ) {
    return _set_camera_rotation(
      viewer,
      rads,
      x,
      y,
      z,
    );
  }

  late final _set_camera_rotationPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Float, ffi.Float,
              ffi.Float, ffi.Float)>>('set_camera_rotation');
  late final _set_camera_rotation = _set_camera_rotationPtr.asFunction<
      void Function(ffi.Pointer<ffi.Void>, double, double, double, double)>();

  void set_camera_model_matrix(
    ffi.Pointer<ffi.Void> viewer,
    ffi.Pointer<ffi.Float> matrix,
  ) {
    return _set_camera_model_matrix(
      viewer,
      matrix,
    );
  }

  late final _set_camera_model_matrixPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Pointer<ffi.Void>,
              ffi.Pointer<ffi.Float>)>>('set_camera_model_matrix');
  late final _set_camera_model_matrix = _set_camera_model_matrixPtr.asFunction<
      void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Float>)>();

  void set_camera_focal_length(
    ffi.Pointer<ffi.Void> viewer,
    double focalLength,
  ) {
    return _set_camera_focal_length(
      viewer,
      focalLength,
    );
  }

  late final _set_camera_focal_lengthPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(
              ffi.Pointer<ffi.Void>, ffi.Float)>>('set_camera_focal_length');
  late final _set_camera_focal_length = _set_camera_focal_lengthPtr
      .asFunction<void Function(ffi.Pointer<ffi.Void>, double)>();

  void set_camera_focus_distance(
    ffi.Pointer<ffi.Void> viewer,
    double focusDistance,
  ) {
    return _set_camera_focus_distance(
      viewer,
      focusDistance,
    );
  }

  late final _set_camera_focus_distancePtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(
              ffi.Pointer<ffi.Void>, ffi.Float)>>('set_camera_focus_distance');
  late final _set_camera_focus_distance = _set_camera_focus_distancePtr
      .asFunction<void Function(ffi.Pointer<ffi.Void>, double)>();
}

class __fsid_t extends ffi.Struct {
  @ffi.Array.multi([2])
  external ffi.Array<ffi.Int> __val;
}

class ResourceBuffer extends ffi.Struct {
  external ffi.Pointer<ffi.Void> data;

  @ffi.Uint32()
  external int size;

  @ffi.Uint32()
  external int id;
}

typedef renderCallback = ffi.Pointer<
    ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void> viewer)>>;
typedef EntityId = ffi.Int32;

const int _STDINT_H = 1;

const int _FEATURES_H = 1;

const int _DEFAULT_SOURCE = 1;

const int __GLIBC_USE_ISOC2X = 1;

const int __USE_ISOC11 = 1;

const int __USE_ISOC99 = 1;

const int __USE_ISOC95 = 1;

const int _POSIX_SOURCE = 1;

const int _POSIX_C_SOURCE = 200809;

const int __USE_POSIX = 1;

const int __USE_POSIX2 = 1;

const int __USE_POSIX199309 = 1;

const int __USE_POSIX199506 = 1;

const int __USE_XOPEN2K = 1;

const int __USE_XOPEN2K8 = 1;

const int _ATFILE_SOURCE = 1;

const int __USE_MISC = 1;

const int __USE_ATFILE = 1;

const int __USE_FORTIFY_LEVEL = 0;

const int __GLIBC_USE_DEPRECATED_GETS = 0;

const int __GLIBC_USE_DEPRECATED_SCANF = 0;

const int _STDC_PREDEF_H = 1;

const int __STDC_IEC_559__ = 1;

const int __STDC_IEC_559_COMPLEX__ = 1;

const int __STDC_ISO_10646__ = 201706;

const int __GNU_LIBRARY__ = 6;

const int __GLIBC__ = 2;

const int __GLIBC_MINOR__ = 33;

const int _SYS_CDEFS_H = 1;

const int __THROW = 1;

const int __THROWNL = 1;

const int __glibc_c99_flexarr_available = 1;

const int __WORDSIZE = 64;

const int __WORDSIZE_TIME64_COMPAT32 = 1;

const int __SYSCALL_WORDSIZE = 64;

const int __LDOUBLE_REDIRECTS_TO_FLOAT128_ABI = 0;

const int __HAVE_GENERIC_SELECTION = 0;

const int __GLIBC_USE_LIB_EXT2 = 1;

const int __GLIBC_USE_IEC_60559_BFP_EXT = 1;

const int __GLIBC_USE_IEC_60559_BFP_EXT_C2X = 1;

const int __GLIBC_USE_IEC_60559_FUNCS_EXT = 1;

const int __GLIBC_USE_IEC_60559_FUNCS_EXT_C2X = 1;

const int __GLIBC_USE_IEC_60559_TYPES_EXT = 1;

const int _BITS_TYPES_H = 1;

const int __TIMESIZE = 64;

const int _BITS_TYPESIZES_H = 1;

const int __OFF_T_MATCHES_OFF64_T = 1;

const int __INO_T_MATCHES_INO64_T = 1;

const int __RLIM_T_MATCHES_RLIM64_T = 1;

const int __STATFS_MATCHES_STATFS64 = 1;

const int __KERNEL_OLD_TIMEVAL_MATCHES_TIMEVAL64 = 1;

const int __FD_SETSIZE = 1024;

const int _BITS_TIME64_H = 1;

const int _BITS_WCHAR_H = 1;

const int __WCHAR_MAX = 2147483647;

const int __WCHAR_MIN = -2147483648;

const int _BITS_STDINT_INTN_H = 1;

const int _BITS_STDINT_UINTN_H = 1;

const int INT8_MIN = -128;

const int INT16_MIN = -32768;

const int INT32_MIN = -2147483648;

const int INT64_MIN = -9223372036854775808;

const int INT8_MAX = 127;

const int INT16_MAX = 32767;

const int INT32_MAX = 2147483647;

const int INT64_MAX = 9223372036854775807;

const int UINT8_MAX = 255;

const int UINT16_MAX = 65535;

const int UINT32_MAX = 4294967295;

const int UINT64_MAX = -1;

const int INT_LEAST8_MIN = -128;

const int INT_LEAST16_MIN = -32768;

const int INT_LEAST32_MIN = -2147483648;

const int INT_LEAST64_MIN = -9223372036854775808;

const int INT_LEAST8_MAX = 127;

const int INT_LEAST16_MAX = 32767;

const int INT_LEAST32_MAX = 2147483647;

const int INT_LEAST64_MAX = 9223372036854775807;

const int UINT_LEAST8_MAX = 255;

const int UINT_LEAST16_MAX = 65535;

const int UINT_LEAST32_MAX = 4294967295;

const int UINT_LEAST64_MAX = -1;

const int INT_FAST8_MIN = -128;

const int INT_FAST16_MIN = -9223372036854775808;

const int INT_FAST32_MIN = -9223372036854775808;

const int INT_FAST64_MIN = -9223372036854775808;

const int INT_FAST8_MAX = 127;

const int INT_FAST16_MAX = 9223372036854775807;

const int INT_FAST32_MAX = 9223372036854775807;

const int INT_FAST64_MAX = 9223372036854775807;

const int UINT_FAST8_MAX = 255;

const int UINT_FAST16_MAX = -1;

const int UINT_FAST32_MAX = -1;

const int UINT_FAST64_MAX = -1;

const int INTPTR_MIN = -9223372036854775808;

const int INTPTR_MAX = 9223372036854775807;

const int UINTPTR_MAX = -1;

const int INTMAX_MIN = -9223372036854775808;

const int INTMAX_MAX = 9223372036854775807;

const int UINTMAX_MAX = -1;

const int PTRDIFF_MIN = -9223372036854775808;

const int PTRDIFF_MAX = 9223372036854775807;

const int SIG_ATOMIC_MIN = -2147483648;

const int SIG_ATOMIC_MAX = 2147483647;

const int SIZE_MAX = -1;

const int WCHAR_MIN = -2147483648;

const int WCHAR_MAX = 2147483647;

const int WINT_MIN = 0;

const int WINT_MAX = 4294967295;
