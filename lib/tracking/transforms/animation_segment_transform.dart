import 'package:auto_route_test/tracking/transforms/segment_transform.dart';

class AnimationSegmentTransform implements SegmentTransform {
  @override
  String apply(String segment) {
    final animationTagIndex = segment.lastIndexOf('@');

    if (animationTagIndex == -1) {
      return segment;
    }

    return segment.substring(0, animationTagIndex);
  }
}
