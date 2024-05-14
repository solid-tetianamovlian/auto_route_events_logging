import 'dart:collection';

import 'package:auto_route/auto_route.dart';
import 'package:auto_route_test/routing/app_router.dart';
import 'package:auto_route_test/models/quiz/question.dart';
import 'package:auto_route_test/models/quiz/quiz_context.dart';
import 'package:auto_route_test/models/quiz/quiz_option.dart';
import 'package:darq/darq.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class QuizBuilder extends StatelessWidget {
  final bool canSkip;
  final bool showProgress;
  final List<Question> questions;
  final Function(UnmodifiableMapView<int, List<QuizOption>>) onCompletion;

  const QuizBuilder({
    super.key,
    required this.canSkip,
    required this.showProgress,
    required this.questions,
    required this.onCompletion,
  });

  @override
  Widget build(BuildContext context) {
    final routes = questions
        .select((q, index) => QuestionRoute(
            question: q,
            index: index + 1,
            onNext: (ctx) {
              final tabsRouter = AutoTabsRouter.of(ctx);
              final activeIndex = tabsRouter.activeIndex;

              final quizContext = Provider.of<QuizContext>(ctx, listen: false);

              if (activeIndex == questions.length - 1) {
                onCompletion(quizContext.answers);

                return;
              }

              setNewQuestion(ctx, 1);
            }))
        .toList();

    return ChangeNotifierProvider(
      create: (_) => QuizContext(
        length: questions.length,
      )..setActiveQuestionType(
          questions.first.questionType,
        ),
      child: AutoTabsRouter(
        routes: routes,
        builder: (context, child) {
          final tabsRouter = AutoTabsRouter.of(context);
          final activeIndex = tabsRouter.activeIndex;
          final showCloseButton = !canSkip || activeIndex == 0;

          return Scaffold(
            appBar: AppBar(
              leading: activeIndex > 0
                  ? IconButton(
                      icon: const Icon(Icons.arrow_back),
                      onPressed: () {
                        setNewQuestion(context, -1);
                      },
                    )
                  : Container(),
              actions: [
                Visibility(
                  visible: showCloseButton,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: IconButton(
                      icon: const Icon(Icons.close),
                      onPressed: () {
                        context.navigateTo(const TabRoute());
                      },
                    ),
                  ),
                ),
                Visibility(
                  visible: !showCloseButton,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: TextButton(
                      child: const Text('Skip'),
                      onPressed: () {
                        final quizContext =
                            Provider.of<QuizContext>(context, listen: false);
                        quizContext.skipQuestion();

                        if (activeIndex == questions.length - 1) {
                          onCompletion(quizContext.answers);

                          return;
                        }
                        setNewQuestion(context, 1);
                      },
                    ),
                  ),
                )
              ],
            ),
            body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 16.0,
                  horizontal: 24.0,
                ),
                child: Column(
                  children: [
                    // back and skip
                    Visibility(
                      visible: showProgress,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 16.0),
                        child: LinearProgressIndicator(
                          value: (activeIndex + 1) / questions.length,
                          backgroundColor: Colors.grey,
                          valueColor:
                              const AlwaysStoppedAnimation<Color>(Colors.blue),
                        ),
                      ),
                    ),
                    Expanded(child: child),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  void setNewQuestion(BuildContext context, int index) {
    final tabsRouter = AutoTabsRouter.of(context);
    final activeIndex = tabsRouter.activeIndex;

    final quizContext = Provider.of<QuizContext>(context, listen: false);

    quizContext.setActiveQuestionIndex(activeIndex + index);
    quizContext.setActiveQuestionType(
      questions[activeIndex + index].questionType,
    );
    tabsRouter.setActiveIndex(activeIndex + index);
  }
}
