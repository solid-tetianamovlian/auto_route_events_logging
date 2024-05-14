import 'package:auto_route/auto_route.dart';
import 'package:auto_route_test/routing/app_router.dart';
import 'package:auto_route_test/models/logs/logs_model.dart';
import 'package:auto_route_test/models/page_meta_data.dart';
import 'package:auto_route_test/models/tabs.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class PageTransitionObserver extends AutoRouteObserver {
  static String? currentTab;
  static String? currentRoute;

  final logsModel = GetIt.instance.get<LogsModel>();

  final List<String> tabs = Tabs.values.map((tab) => tab.name).toList();

  bool _canSendScreenView(Route<dynamic> route, Route<dynamic>? previousRoute) {
    return (previousRoute is PageRoute && route is PageRoute);
  }

  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didPush(route, previousRoute);

    if (!_canSendScreenView(route, previousRoute)) return;
    print(route.data?.match);

    final newRouteMetaDataMap = route.data?.meta;
    final newRoutePath = route.data?.match ?? '';

    final newRouteMetaData = PageMetaData.fromJson(newRouteMetaDataMap ?? {});
    if (!newRouteMetaData.logPageView) return;

    final oldRoute = currentRoute ?? '/launch';
    final newRoute = newRouteMetaData.logPageName ?? newRoutePath;

    logEvent('didPush', oldRoute, newRoute);

    logsModel.logs.add('$oldRoute -> $newRoute');
    currentRoute = newRoute;
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didPop(route, previousRoute);

    if (!_canSendScreenView(route, previousRoute)) return;

    final newRouteMetaDataMap = previousRoute?.data?.meta;
    final newRoutePath = previousRoute?.data?.match ?? '';

    final newRouteMetaData = PageMetaData.fromJson(newRouteMetaDataMap ?? {});

    final oldRoute = currentRoute;
    final newRoute = previousRoute?.data?.name == TabRoute.name
        ? currentTab
        : newRouteMetaData.logPageName ?? newRoutePath;

    logEvent('didPop', oldRoute!, newRoute!);

    logsModel.logs.add('$oldRoute -> $newRoute');
    currentRoute = newRoute;
  }

  @override
  void didInitTabRoute(TabPageRoute route, TabPageRoute? previousRoute) {
    super.didInitTabRoute(route, previousRoute);

    final newTabMetaDataMap = route.routeInfo.meta;
    final newTabRouteName = route.match;
    final oldTabRouteName = previousRoute?.match;

    final tabMetaData = PageMetaData.fromJson(newTabMetaDataMap);
    if (!tabMetaData.logPageView) return;

    final newTab = tabMetaData.logPageName ?? newTabRouteName;
    final oldTab = oldTabRouteName ?? currentTab ?? currentRoute ?? '/launch';

    logEvent('didInitTabRoute', oldTab, newTab);

    logsModel.logs.add('$oldTab -> $newTab');
    currentRoute = newTab;
    if (tabs.contains(newTab)) currentTab = newTab;
  }

  @override
  void didChangeTabRoute(TabPageRoute route, TabPageRoute previousRoute) {
    super.didChangeTabRoute(route, previousRoute);

    final tabMetaDataMap = route.routeInfo.meta;
    final tabRouteName = route.match;

    final tabMetaData = PageMetaData.fromJson(tabMetaDataMap);
    if (!tabMetaData.logPageView) return;

    final newTab = tabMetaData.logPageName ?? tabRouteName;

    logEvent('didChangeTabRoute', currentTab!, newTab);

    logsModel.logs.add('$currentTab -> $newTab');
    currentRoute = newTab;
    if (tabs.contains(newTab)) currentTab = newTab;
  }

  void logEvent(String method, String from, String to) {
    if (!from.startsWith('/')) from = '/$from';
    if (!to.startsWith('/')) to = '/$to';

    print('########$method: $from -> $to');
  }
}
