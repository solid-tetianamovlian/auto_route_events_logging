import 'package:auto_route/auto_route.dart';
import 'package:auto_route_test/tracking/exclusions/root_segment_exclusion.dart';
import 'package:auto_route_test/tracking/exclusions/same_segment_exclusion.dart';
import 'package:auto_route_test/tracking/exclusions/segment_exclusion.dart';
import 'package:auto_route_test/tracking/transforms/animation_segment_transform.dart';
import 'package:auto_route_test/tracking/transforms/leading_slash_segment_transform.dart';
import 'package:auto_route_test/tracking/transforms/segment_transform.dart';
import 'package:darq/darq.dart';

class ScreenTransitionTracker {
  final List<SegmentExclusion> _exclusions = [
    RootSegmentExclusion(),
    SameSegmentExclusion(),
  ];

  final List<SegmentTransform> _transforms = [
    LeadingSlashSegmentTransform(),
    AnimationSegmentTransform(),
  ];

  String lastSegment = '/launch';

  void onNavigate(UrlState newUrlState) {
    final prev = lastSegment;

    final next = _transform(newUrlState.segments.lastOrNull?.stringMatch ?? '');

    if (_shouldExclude(prev, next)) {
      return;
    }

    print('$prev -> $next');
    lastSegment = next;
  }

  String _transform(String segment) {
    return _transforms.aggregateSelect(
      segment,
      (aggregate, transform) => transform.apply(aggregate),
    );
  }

  bool _shouldExclude(String prev, String next) {
    return _exclusions.any((exclusion) => exclusion.shouldExclude(prev, next));
  }
}
