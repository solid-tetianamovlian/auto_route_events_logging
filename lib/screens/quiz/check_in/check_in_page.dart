import 'package:auto_route/auto_route.dart';
import 'package:auto_route_test/routing/app_router.dart';
import 'package:auto_route_test/models/quiz/options_layout_type.dart';
import 'package:auto_route_test/models/quiz/question.dart';
import 'package:auto_route_test/models/quiz/question_type.dart';
import 'package:auto_route_test/models/quiz/quiz_option.dart';
import 'package:auto_route_test/screens/quiz/widgets/quiz_builder.dart';
import 'package:flutter/material.dart';

@RoutePage()
class CheckInPage extends StatelessWidget {
  CheckInPage({super.key});

  final List<Question> questions = [
    Question(
        id: 1,
        text: 'CheckIn1',
        questionType: QuestionType.singleSelect,
        optionsLayoutType: OptionsLayoutType.inline,
        quizOptions: [
          QuizOption(
            icon: const Icon(Icons.abc),
            text: 'Option1',
          ),
          QuizOption(
            icon: const Icon(Icons.find_in_page),
            text: 'Option2',
          ),
          QuizOption(
            icon: const Icon(Icons.airlines_sharp),
            text: 'Option3',
          )
        ]),
    Question(
        id: 2,
        text: 'CheckIn2',
        questionType: QuestionType.singleSelect,
        optionsLayoutType: OptionsLayoutType.inline,
        quizOptions: [
          QuizOption(
            icon: const Icon(Icons.abc),
            text: 'Option1',
          ),
          QuizOption(
            icon: const Icon(Icons.find_in_page),
            text: 'Option2',
          ),
          QuizOption(
            icon: const Icon(Icons.airlines_sharp),
            text: 'Option3',
          )
        ]),
    Question(
        id: 3,
        text: 'CheckIn3',
        questionType: QuestionType.singleSelect,
        optionsLayoutType: OptionsLayoutType.inline,
        quizOptions: [
          QuizOption(
            icon: const Icon(Icons.abc),
            text: 'Option1',
          ),
          QuizOption(
            icon: const Icon(Icons.find_in_page),
            text: 'Option2',
          ),
          QuizOption(
            icon: const Icon(Icons.airlines_sharp),
            text: 'Option3',
          )
        ]),
    Question(
        id: 4,
        text: 'CheckIn4',
        questionType: QuestionType.singleSelect,
        optionsLayoutType: OptionsLayoutType.grid,
        quizOptions: [
          QuizOption(
            icon: const Icon(Icons.abc),
            text: 'Option1',
          ),
          QuizOption(
            icon: const Icon(Icons.find_in_page),
            text: 'Option2',
          ),
          QuizOption(
            icon: const Icon(Icons.airlines_sharp),
            text: 'Option3',
          )
        ]),
    Question(
        id: 5,
        text: 'CheckIn5',
        questionType: QuestionType.singleSelect,
        optionsLayoutType: OptionsLayoutType.grid,
        quizOptions: [
          QuizOption(
            icon: const Icon(Icons.search),
            text: 'Option1',
          ),
          QuizOption(
            icon: const Icon(Icons.alarm),
            text: 'Option2',
          ),
          QuizOption(
            icon: const Icon(Icons.train),
            text: 'Option3',
          ),
          QuizOption(
            icon: const Icon(Icons.add_home),
            text: 'Option4',
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
        context.pushRoute(CheckInSummaryRoute(
          selectedOptions: answers,
        ));
      },
    );
  }
}
