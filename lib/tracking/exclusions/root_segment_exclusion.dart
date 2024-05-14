import 'package:auto_route_test/tracking/exclusions/segment_exclusion.dart';

class RootSegmentExclusion implements SegmentExclusion {
  @override
  bool shouldExclude(String previousSegment, String nextSegment) {
    return nextSegment == '/';
  }
}
