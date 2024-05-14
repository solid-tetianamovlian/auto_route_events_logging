import 'dart:collection';

import 'package:auto_route/auto_route.dart';
import 'package:auto_route_test/models/page_meta_data.dart';
import 'package:auto_route_test/models/quiz/question.dart';
import 'package:auto_route_test/models/quiz/quiz_option.dart';
import 'package:auto_route_test/models/tabs.dart';
import 'package:auto_route_test/routing/routes/home_routes.dart';
import 'package:auto_route_test/screens/auth/auth_page.dart';
import 'package:auto_route_test/screens/explore/byte_page.dart';
import 'package:auto_route_test/screens/explore_page.dart';
import 'package:auto_route_test/screens/home/account_info.dart';
import 'package:auto_route_test/screens/home/sos_page.dart';
import 'package:auto_route_test/screens/home_page.dart';
import 'package:auto_route_test/screens/launch_page.dart';
import 'package:auto_route_test/screens/logs/logs_page.dart';
import 'package:auto_route_test/screens/messages/message_thread_page.dart';
import 'package:auto_route_test/screens/messages/new_message_thread_page.dart';
import 'package:auto_route_test/screens/messages_page.dart';
import 'package:auto_route_test/screens/home/profile_page.dart';
import 'package:auto_route_test/screens/quiz/check_in/check_in_page.dart';
import 'package:auto_route_test/screens/quiz/check_in/check_in_question_page.dart';
import 'package:auto_route_test/screens/quiz/check_in/check_in_summary.dart';
import 'package:auto_route_test/screens/quiz/question_page.dart';
import 'package:auto_route_test/screens/quiz/demographics/demographics_quiz_page.dart';
import 'package:auto_route_test/screens/reflect/new_reflection_page.dart';
import 'package:auto_route_test/screens/reflect/reflection_summary_page.dart';
import 'package:auto_route_test/screens/reflect_page.dart';
import 'package:auto_route_test/screens/sessions/bottom_select_time_page.dart';
import 'package:auto_route_test/screens/sessions/bottom_session_confirmation_page.dart';
import 'package:auto_route_test/screens/sessions/bottom_session_summary_page.dart';
import 'package:auto_route_test/screens/sessions/select_time_page.dart';
import 'package:auto_route_test/screens/sessions/session_confirmation_page.dart';
import 'package:auto_route_test/screens/sessions/session_summary_page.dart';
import 'package:auto_route_test/screens/sessions_page.dart';
import 'package:auto_route_test/screens/tab_screen.dart';
import 'package:flutter/material.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {
  AppRouter({super.navigatorKey});

  @override
  RouteType get defaultRouteType => const AdaptiveRouteType();

  @override
  final List<AutoRoute> routes = [
    AutoRoute(
      path: '/',
      page: LaunchRoute.page,
      initial: true,
      meta: PageMetaData(logPageView: false).toMap(),
    ),
    CustomRoute(
        path: '/auth',
        page: AuthRoute.page,
        transitionsBuilder: TransitionsBuilders.noTransition),
    CustomRoute(
      path: "/tabs",
      page: TabRoute.page,
      meta: PageMetaData(logPageView: false).toMap(),
      transitionsBuilder: TransitionsBuilders.noTransition,
      children: [
        AutoRoute(path: Tabs.home.name, page: HomeRoute.page, initial: true),
        AutoRoute(
          path: Tabs.reflect.name,
          page: ReflectRoute.page,
        ),
        AutoRoute(
          path: Tabs.explore.name,
          page: ExploreRoute.page,
        ),
        AutoRoute(
          path: Tabs.sessions.name,
          page: SessionsRoute.page,
        ),
        AutoRoute(
          path: Tabs.messages.name,
          page: MessagesRoute.page,
        ),
        AutoRoute(
          path: Tabs.logs.name,
          page: LogsRoute.page,
          maintainState: false,
        ),
      ],
    ),
    ...HomeRoutes.routes,
    // AutoRoute(
    //   path: "/sos",
    //   page: SosRoute.page,
    // ),
    AutoRoute(
      path: "/profile",
      page: ProfileRoute.page,
    ),
    CustomRoute(
      path: "/account_info",
      page: AccountInfoRoute.page,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    AutoRoute(
      path: "/new_reflection_page",
      page: NewReflectionRoute.page,
    ),
    AutoRoute(
      path: "/reflection_summary",
      page: ReflectionSummaryRoute.page,
    ),
    AutoRoute(
      path: "/byte/:id",
      page: ByteRoute.page,
    ),
    AutoRoute(
      path: "/new_message_thread",
      page: NewMessageThreadRoute.page,
    ),
    AutoRoute(
      path: "/message_thread",
      page: MessageThreadRoute.page,
    ),
    AutoRoute(
      path: "/session_time",
      page: SelectTimeRoute.page,
    ),
    AutoRoute(
      path: "/session_confirmation",
      page: SessionConfirmationRoute.page,
    ),
    AutoRoute(
      path: "/session_summary",
      page: SessionSummaryRoute.page,
    ),
    CustomRoute(
      path: "/select_session_time@bottom_animation",
      page: BottomSelectTimeRoute.page,
      meta: PageMetaData(logPageName: '/session_time').toMap(),
      transitionsBuilder: TransitionsBuilders.slideBottom,
    ),
    CustomRoute(
      path: "/session_confirmation@bottom_animation",
      page: BottomSessionConfirmationRoute.page,
      meta: PageMetaData(logPageName: '/session_confirmation').toMap(),
      transitionsBuilder: TransitionsBuilders.slideBottom,
    ),
    CustomRoute(
      path: "/session_summary@bottom_animation",
      page: BottomSessionSummaryRoute.page,
      meta: PageMetaData(logPageName: '/session_summary').toMap(),
      transitionsBuilder: TransitionsBuilders.slideBottom,
    ),
    AutoRoute(
      path: "/demographics",
      page: DemographicsQuizRoute.page,
      meta: PageMetaData(logPageView: false).toMap(),
      children: [
        AutoRoute(
          path: 'demographics_q#:index',
          page: QuestionRoute.page,
          maintainState: false,
        )
      ],
    ),
    AutoRoute(
      path: "/check_in",
      page: CheckInRoute.page,
      meta: PageMetaData(logPageView: false).toMap(),
      children: [
        AutoRoute(
          path: 'check_in_q#:index',
          page: QuestionRoute.page,
          maintainState: false,
        ),
      ],
    ),
    AutoRoute(
      path: '/check_in_summary',
      page: CheckInSummaryRoute.page,
    )
  ];
}
