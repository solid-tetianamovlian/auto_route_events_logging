import 'package:auto_route/auto_route.dart';
import 'package:auto_route_test/routing/app_router.dart';

class HomeRoutes {
  static Iterable<AutoRoute> get routes => [
        AutoRoute(
          path: "/sos",
          page: SosRoute.page,
        ),
      ];
}
