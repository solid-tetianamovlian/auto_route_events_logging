import 'package:auto_route_test/tracking/transforms/segment_transform.dart';

class LeadingSlashSegmentTransform implements SegmentTransform {
  @override
  String apply(String segment) {
    if (segment.startsWith('/')) {
      return segment;
    }

    return '/$segment';
  }
}
