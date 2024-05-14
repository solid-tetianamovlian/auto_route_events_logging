// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    AccountInfoRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AccountInfoPage(),
      );
    },
    AuthRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AuthPage(),
      );
    },
    BottomSelectTimeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const BottomSelectTimePage(),
      );
    },
    BottomSessionConfirmationRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const BottomSessionConfirmationPage(),
      );
    },
    BottomSessionSummaryRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const BottomSessionSummaryPage(),
      );
    },
    ByteRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<ByteRouteArgs>(
          orElse: () => ByteRouteArgs(id: pathParams.getInt('id')));
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: BytePage(
          key: args.key,
          id: args.id,
        ),
      );
    },
    CheckInRoute.name: (routeData) {
      final args = routeData.argsAs<CheckInRouteArgs>(
          orElse: () => const CheckInRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: CheckInPage(key: args.key),
      );
    },
    CheckInQuestionRoute.name: (routeData) {
      final args = routeData.argsAs<CheckInQuestionRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: CheckInQuestionPage(
          key: args.key,
          question: args.question,
        ),
      );
    },
    CheckInSummaryRoute.name: (routeData) {
      final args = routeData.argsAs<CheckInSummaryRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: CheckInSummaryPage(
          key: args.key,
          required: args.required,
          selectedOptions: args.selectedOptions,
        ),
      );
    },
    DemographicsQuizRoute.name: (routeData) {
      final args = routeData.argsAs<DemographicsQuizRouteArgs>(
          orElse: () => const DemographicsQuizRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: DemographicsQuizPage(key: args.key),
      );
    },
    ExploreRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ExplorePage(),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomePage(),
      );
    },
    LaunchRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LaunchPage(),
      );
    },
    LogsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LogsPage(),
      );
    },
    MessageThreadRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MessageThreadPage(),
      );
    },
    MessagesRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MessagesPage(),
      );
    },
    NewMessageThreadRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const NewMessageThreadPage(),
      );
    },
    NewReflectionRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const NewReflectionPage(),
      );
    },
    ProfileRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProfilePage(),
      );
    },
    QuestionRoute.name: (routeData) {
      final args = routeData.argsAs<QuestionRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: QuestionPage(
          key: args.key,
          question: args.question,
          onNext: args.onNext,
          index: args.index,
        ),
      );
    },
    ReflectRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ReflectPage(),
      );
    },
    ReflectionSummaryRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ReflectionSummaryPage(),
      );
    },
    SelectTimeRoute.name: (routeData) {
      final args = routeData.argsAs<SelectTimeRouteArgs>(
          orElse: () => const SelectTimeRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: SelectTimePage(
          key: args.key,
          fromBottomDialog: args.fromBottomDialog,
        ),
      );
    },
    SessionConfirmationRoute.name: (routeData) {
      final args = routeData.argsAs<SessionConfirmationRouteArgs>(
          orElse: () => const SessionConfirmationRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: SessionConfirmationPage(
          key: args.key,
          fromBottomDialog: args.fromBottomDialog,
        ),
      );
    },
    SessionSummaryRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SessionSummaryPage(),
      );
    },
    SessionsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SessionsPage(),
      );
    },
    SosRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SosPage(),
      );
    },
    TabRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const TabPage(),
      );
    },
  };
}

/// generated route for
/// [AccountInfoPage]
class AccountInfoRoute extends PageRouteInfo<void> {
  const AccountInfoRoute({List<PageRouteInfo>? children})
      : super(
          AccountInfoRoute.name,
          initialChildren: children,
        );

  static const String name = 'AccountInfoRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [AuthPage]
class AuthRoute extends PageRouteInfo<void> {
  const AuthRoute({List<PageRouteInfo>? children})
      : super(
          AuthRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [BottomSelectTimePage]
class BottomSelectTimeRoute extends PageRouteInfo<void> {
  const BottomSelectTimeRoute({List<PageRouteInfo>? children})
      : super(
          BottomSelectTimeRoute.name,
          initialChildren: children,
        );

  static const String name = 'BottomSelectTimeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [BottomSessionConfirmationPage]
class BottomSessionConfirmationRoute extends PageRouteInfo<void> {
  const BottomSessionConfirmationRoute({List<PageRouteInfo>? children})
      : super(
          BottomSessionConfirmationRoute.name,
          initialChildren: children,
        );

  static const String name = 'BottomSessionConfirmationRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [BottomSessionSummaryPage]
class BottomSessionSummaryRoute extends PageRouteInfo<void> {
  const BottomSessionSummaryRoute({List<PageRouteInfo>? children})
      : super(
          BottomSessionSummaryRoute.name,
          initialChildren: children,
        );

  static const String name = 'BottomSessionSummaryRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [BytePage]
class ByteRoute extends PageRouteInfo<ByteRouteArgs> {
  ByteRoute({
    Key? key,
    required int id,
    List<PageRouteInfo>? children,
  }) : super(
          ByteRoute.name,
          args: ByteRouteArgs(
            key: key,
            id: id,
          ),
          rawPathParams: {'id': id},
          initialChildren: children,
        );

  static const String name = 'ByteRoute';

  static const PageInfo<ByteRouteArgs> page = PageInfo<ByteRouteArgs>(name);
}

class ByteRouteArgs {
  const ByteRouteArgs({
    this.key,
    required this.id,
  });

  final Key? key;

  final int id;

  @override
  String toString() {
    return 'ByteRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [CheckInPage]
class CheckInRoute extends PageRouteInfo<CheckInRouteArgs> {
  CheckInRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          CheckInRoute.name,
          args: CheckInRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'CheckInRoute';

  static const PageInfo<CheckInRouteArgs> page =
      PageInfo<CheckInRouteArgs>(name);
}

class CheckInRouteArgs {
  const CheckInRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'CheckInRouteArgs{key: $key}';
  }
}

/// generated route for
/// [CheckInQuestionPage]
class CheckInQuestionRoute extends PageRouteInfo<CheckInQuestionRouteArgs> {
  CheckInQuestionRoute({
    Key? key,
    required Question question,
    List<PageRouteInfo>? children,
  }) : super(
          CheckInQuestionRoute.name,
          args: CheckInQuestionRouteArgs(
            key: key,
            question: question,
          ),
          initialChildren: children,
        );

  static const String name = 'CheckInQuestionRoute';

  static const PageInfo<CheckInQuestionRouteArgs> page =
      PageInfo<CheckInQuestionRouteArgs>(name);
}

class CheckInQuestionRouteArgs {
  const CheckInQuestionRouteArgs({
    this.key,
    required this.question,
  });

  final Key? key;

  final Question question;

  @override
  String toString() {
    return 'CheckInQuestionRouteArgs{key: $key, question: $question}';
  }
}

/// generated route for
/// [CheckInSummaryPage]
class CheckInSummaryRoute extends PageRouteInfo<CheckInSummaryRouteArgs> {
  CheckInSummaryRoute({
    Key? key,
    dynamic required,
    required UnmodifiableMapView<int, List<QuizOption>> selectedOptions,
    List<PageRouteInfo>? children,
  }) : super(
          CheckInSummaryRoute.name,
          args: CheckInSummaryRouteArgs(
            key: key,
            required: required,
            selectedOptions: selectedOptions,
          ),
          initialChildren: children,
        );

  static const String name = 'CheckInSummaryRoute';

  static const PageInfo<CheckInSummaryRouteArgs> page =
      PageInfo<CheckInSummaryRouteArgs>(name);
}

class CheckInSummaryRouteArgs {
  const CheckInSummaryRouteArgs({
    this.key,
    this.required,
    required this.selectedOptions,
  });

  final Key? key;

  final dynamic required;

  final UnmodifiableMapView<int, List<QuizOption>> selectedOptions;

  @override
  String toString() {
    return 'CheckInSummaryRouteArgs{key: $key, required: $required, selectedOptions: $selectedOptions}';
  }
}

/// generated route for
/// [DemographicsQuizPage]
class DemographicsQuizRoute extends PageRouteInfo<DemographicsQuizRouteArgs> {
  DemographicsQuizRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          DemographicsQuizRoute.name,
          args: DemographicsQuizRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'DemographicsQuizRoute';

  static const PageInfo<DemographicsQuizRouteArgs> page =
      PageInfo<DemographicsQuizRouteArgs>(name);
}

class DemographicsQuizRouteArgs {
  const DemographicsQuizRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'DemographicsQuizRouteArgs{key: $key}';
  }
}

/// generated route for
/// [ExplorePage]
class ExploreRoute extends PageRouteInfo<void> {
  const ExploreRoute({List<PageRouteInfo>? children})
      : super(
          ExploreRoute.name,
          initialChildren: children,
        );

  static const String name = 'ExploreRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [LaunchPage]
class LaunchRoute extends PageRouteInfo<void> {
  const LaunchRoute({List<PageRouteInfo>? children})
      : super(
          LaunchRoute.name,
          initialChildren: children,
        );

  static const String name = 'LaunchRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [LogsPage]
class LogsRoute extends PageRouteInfo<void> {
  const LogsRoute({List<PageRouteInfo>? children})
      : super(
          LogsRoute.name,
          initialChildren: children,
        );

  static const String name = 'LogsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MessageThreadPage]
class MessageThreadRoute extends PageRouteInfo<void> {
  const MessageThreadRoute({List<PageRouteInfo>? children})
      : super(
          MessageThreadRoute.name,
          initialChildren: children,
        );

  static const String name = 'MessageThreadRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MessagesPage]
class MessagesRoute extends PageRouteInfo<void> {
  const MessagesRoute({List<PageRouteInfo>? children})
      : super(
          MessagesRoute.name,
          initialChildren: children,
        );

  static const String name = 'MessagesRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [NewMessageThreadPage]
class NewMessageThreadRoute extends PageRouteInfo<void> {
  const NewMessageThreadRoute({List<PageRouteInfo>? children})
      : super(
          NewMessageThreadRoute.name,
          initialChildren: children,
        );

  static const String name = 'NewMessageThreadRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [NewReflectionPage]
class NewReflectionRoute extends PageRouteInfo<void> {
  const NewReflectionRoute({List<PageRouteInfo>? children})
      : super(
          NewReflectionRoute.name,
          initialChildren: children,
        );

  static const String name = 'NewReflectionRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ProfilePage]
class ProfileRoute extends PageRouteInfo<void> {
  const ProfileRoute({List<PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [QuestionPage]
class QuestionRoute extends PageRouteInfo<QuestionRouteArgs> {
  QuestionRoute({
    Key? key,
    required Question question,
    required dynamic Function(BuildContext) onNext,
    required int index,
    List<PageRouteInfo>? children,
  }) : super(
          QuestionRoute.name,
          args: QuestionRouteArgs(
            key: key,
            question: question,
            onNext: onNext,
            index: index,
          ),
          rawPathParams: {'index': index},
          initialChildren: children,
        );

  static const String name = 'QuestionRoute';

  static const PageInfo<QuestionRouteArgs> page =
      PageInfo<QuestionRouteArgs>(name);
}

class QuestionRouteArgs {
  const QuestionRouteArgs({
    this.key,
    required this.question,
    required this.onNext,
    required this.index,
  });

  final Key? key;

  final Question question;

  final dynamic Function(BuildContext) onNext;

  final int index;

  @override
  String toString() {
    return 'QuestionRouteArgs{key: $key, question: $question, onNext: $onNext, index: $index}';
  }
}

/// generated route for
/// [ReflectPage]
class ReflectRoute extends PageRouteInfo<void> {
  const ReflectRoute({List<PageRouteInfo>? children})
      : super(
          ReflectRoute.name,
          initialChildren: children,
        );

  static const String name = 'ReflectRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ReflectionSummaryPage]
class ReflectionSummaryRoute extends PageRouteInfo<void> {
  const ReflectionSummaryRoute({List<PageRouteInfo>? children})
      : super(
          ReflectionSummaryRoute.name,
          initialChildren: children,
        );

  static const String name = 'ReflectionSummaryRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SelectTimePage]
class SelectTimeRoute extends PageRouteInfo<SelectTimeRouteArgs> {
  SelectTimeRoute({
    Key? key,
    bool fromBottomDialog = false,
    List<PageRouteInfo>? children,
  }) : super(
          SelectTimeRoute.name,
          args: SelectTimeRouteArgs(
            key: key,
            fromBottomDialog: fromBottomDialog,
          ),
          initialChildren: children,
        );

  static const String name = 'SelectTimeRoute';

  static const PageInfo<SelectTimeRouteArgs> page =
      PageInfo<SelectTimeRouteArgs>(name);
}

class SelectTimeRouteArgs {
  const SelectTimeRouteArgs({
    this.key,
    this.fromBottomDialog = false,
  });

  final Key? key;

  final bool fromBottomDialog;

  @override
  String toString() {
    return 'SelectTimeRouteArgs{key: $key, fromBottomDialog: $fromBottomDialog}';
  }
}

/// generated route for
/// [SessionConfirmationPage]
class SessionConfirmationRoute
    extends PageRouteInfo<SessionConfirmationRouteArgs> {
  SessionConfirmationRoute({
    Key? key,
    bool fromBottomDialog = false,
    List<PageRouteInfo>? children,
  }) : super(
          SessionConfirmationRoute.name,
          args: SessionConfirmationRouteArgs(
            key: key,
            fromBottomDialog: fromBottomDialog,
          ),
          initialChildren: children,
        );

  static const String name = 'SessionConfirmationRoute';

  static const PageInfo<SessionConfirmationRouteArgs> page =
      PageInfo<SessionConfirmationRouteArgs>(name);
}

class SessionConfirmationRouteArgs {
  const SessionConfirmationRouteArgs({
    this.key,
    this.fromBottomDialog = false,
  });

  final Key? key;

  final bool fromBottomDialog;

  @override
  String toString() {
    return 'SessionConfirmationRouteArgs{key: $key, fromBottomDialog: $fromBottomDialog}';
  }
}

/// generated route for
/// [SessionSummaryPage]
class SessionSummaryRoute extends PageRouteInfo<void> {
  const SessionSummaryRoute({List<PageRouteInfo>? children})
      : super(
          SessionSummaryRoute.name,
          initialChildren: children,
        );

  static const String name = 'SessionSummaryRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SessionsPage]
class SessionsRoute extends PageRouteInfo<void> {
  const SessionsRoute({List<PageRouteInfo>? children})
      : super(
          SessionsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SessionsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SosPage]
class SosRoute extends PageRouteInfo<void> {
  const SosRoute({List<PageRouteInfo>? children})
      : super(
          SosRoute.name,
          initialChildren: children,
        );

  static const String name = 'SosRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [TabPage]
class TabRoute extends PageRouteInfo<void> {
  const TabRoute({List<PageRouteInfo>? children})
      : super(
          TabRoute.name,
          initialChildren: children,
        );

  static const String name = 'TabRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
