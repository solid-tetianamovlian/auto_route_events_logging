import 'package:auto_route/auto_route.dart';
import 'package:darq/darq.dart';

extension StackRouteExtension on StackRouter {
  void pushAndRemoveUntil(
    PageRouteInfo newRoute, {
    required String removeUntil,
  }) {
    final routesToRemove = stack
        .reverse()
        .takeWhile((route) => route.routeData.name != removeUntil);

    for (final route in routesToRemove) {
      removeRoute(route.routeData, notify: false);
    }

    push(newRoute);
  }
}
