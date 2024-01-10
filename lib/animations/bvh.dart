import 'dart:io';
import 'dart:math';
import 'dart:ui';
import 'package:flutter_filament/animations/animation_data.dart';
import 'package:vector_math/vector_math_64.dart';

void main() {
  var remapData =
      File("/Users/nickfisher/Downloads/momask.bmap").readAsLinesSync();
  final remap = <String, String>{};
  for (int i = 0; i < remapData.length;) {
    var srcBone = remapData[i].split("%")[0];
    if (srcBone != "None") {
      var targetBone = remapData[i + 1].trim();
      remap[targetBone] = srcBone;
    }
    i += 5;
  }
  var anims = BVHParser.parse(
      File("/Users/nickfisher/Downloads/sample (5).bvh").readAsStringSync(),
      ["test"],
      remap);
  print(anims.first.boneName);
  print(anims.first.rotationFrameData.first);
}

class BVHParser {
  static List<BoneAnimationData> parse(
      String data, List<String> meshNames, Map<String, String> remap) {
    final bones = <String>[];
    final rotationFrameData = <List<Quaternion>>[];

    double frameLengthInMs = 0.0;
    var iter = data.split("\n").iterator;
    while (iter.moveNext()) {
      final line = iter.current.trim();
      if (line.startsWith('ROOT') || line.startsWith('JOINT')) {
        bones.add(line.split(' ')[1]);
      } else if (line.startsWith('Frame Time:')) {
        var frameTime = line.split(' ').last.trim();

        frameLengthInMs =
            double.parse(frameTime) * 1000; // Convert to milliseconds
        break;
      }
    }

    final rootBoneTranslationData = <Vector3>[];

    while (iter.moveNext()) {
      final line = iter.current;
      if (line.isEmpty) {
        break;
      }
      var parseResult = _parseFrameData(line);
      rotationFrameData.add(parseResult.rotationData);
      rootBoneTranslationData.add(parseResult.translationData);
    }
    return List<BoneAnimationData>.generate(bones.length, (idx) {
      var bone = bones[idx];
      var boneRotationFrameData =
          rotationFrameData.map((fd) => fd[idx]).toList();

      return BoneAnimationData(
          bone,
          meshNames,
          boneRotationFrameData,
          idx == 0
              ? rootBoneTranslationData
              : List<Vector3>.filled(
                  boneRotationFrameData.length, Vector3.zero()),
          frameLengthInMs);
    });
  }

  static ({List<Quaternion> rotationData, Vector3 translationData})
      _parseFrameData(String frameLine) {
    final frameValues = <double>[];
    for (final entry in frameLine.split(RegExp(r'\s+'))) {
      if (entry.isNotEmpty) {
        frameValues.add(double.parse(entry));
      }
    }

    // first 3 values are root node position (translation), remainder are ZXY rotatons
    final translationData = Vector3.array(frameValues);
    // this is hardcoded assumption for BVH files generated by momask only; won't work for any other animations in general

    // Assuming the BVH data is in ZXY order, which is common but not guaranteed
    List<Quaternion> frameData = [];
    for (int i = 3; i < frameValues.length; i += 3) {
      // Convert Euler angles (in degrees) to a Quaternion
      Quaternion rotation = Quaternion.euler(
          radians(frameValues[i + 2]), // Z-axis rotation
          radians(frameValues[i]), // X-axis rotation
          radians(frameValues[i + 1]) // Y-axis rotation
          );
      frameData.add(rotation);
    }
    return (rotationData: frameData, translationData: translationData);
  }

  static double radians(double degrees) => degrees * (pi / 180.0);
}
