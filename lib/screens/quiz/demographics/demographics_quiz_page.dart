import 'package:auto_route/auto_route.dart';
import 'package:auto_route_test/routing/app_router.dart';
import 'package:auto_route_test/models/quiz/options_layout_type.dart';
import 'package:auto_route_test/models/quiz/question.dart';
import 'package:auto_route_test/models/quiz/question_type.dart';
import 'package:auto_route_test/models/quiz/quiz_option.dart';
import 'package:auto_route_test/screens/quiz/widgets/quiz_builder.dart';
import 'package:darq/darq.dart';
import 'package:flutter/material.dart';

@RoutePage()
class DemographicsQuizPage extends StatelessWidget {
  DemographicsQuizPage({super.key});

  final List<Question> questions = [
    Question(
        id: 1,
        text: 'Test1',
        questionType: QuestionType.singleSelect,
        optionsLayoutType: OptionsLayoutType.inline,
        quizOptions: [
          QuizOption(
            text: 'Option1',
          ),
          QuizOption(
            text: 'Option2',
          )
        ]),
    Question(
        id: 2,
        text: 'Test2',
        questionType: QuestionType.singleSelect,
        optionsLayoutType: OptionsLayoutType.inline,
        quizOptions: [
          QuizOption(
            text: 'Option1',
          ),
          QuizOption(
            text: 'Option2',
          )
        ]),
    Question(
        id: 3,
        text: 'Test3',
        questionType: QuestionType.multiSelect,
        optionsLayoutType: OptionsLayoutType.inline,
        quizOptions: [
          QuizOption(
            text: 'Option1',
          ),
          QuizOption(
            text: 'Option2',
          )
        ]),
    Question(
        id: 4,
        text: 'Test4',
        questionType: QuestionType.multiSelect,
        optionsLayoutType: OptionsLayoutType.inline,
        quizOptions: [
          QuizOption(
            text: 'Option1',
          ),
          QuizOption(
            text: 'Option2',
          )
        ]),
  ];

  @override
  Widget build(BuildContext context) {
    return QuizBuilder(
      canSkip: true,
      showProgress: true,
      questions: questions,
      onCompletion: (answers) {
        final selectedOptions =
            answers.entries.orderBy((entry) => entry.key).select((element, _) {
          final values = element.value;
          if (values.isEmpty) return [];

          return values.map((option) => option.text).toList();
        }).toList();

        context.navigateTo(const TabRoute());
      },
    );
  }
}
