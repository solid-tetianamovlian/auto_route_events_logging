import 'package:auto_route/auto_route.dart';
import 'package:auto_route_test/routing/app_router.dart';
import 'package:auto_route_test/models/logs/logs_model.dart';
import 'package:auto_route_test/tracking/screen_transition_tracker.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'tracking/page_transition_observer.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  GetIt.instance.registerSingleton<LogsModel>(LogsModel());

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key}) {
    _appRouter.navigationHistory.addListener(() {
      // print(_appRouter.navigationHistory.urlState.shouldReplace);
      navigationObserver.onNavigate(_appRouter.navigationHistory.urlState);
    });
  }

  final navigationObserver = ScreenTransitionTracker();

  /// create an instance of `AppRouter`
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: _appRouter.config(
        deepLinkBuilder: (deepLink) {
          if (deepLink.path.startsWith('/dl')) {
            return deepLink;
          } else {
            return DeepLink.defaultPath;
          }
        },
        navigatorObservers: () => [
          // PageTransitionObserver(),
        ],
      ),
    );
  }
}
