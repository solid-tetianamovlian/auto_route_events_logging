import 'package:auto_route/auto_route.dart';
import 'package:auto_route_test/models/quiz/question.dart';
import 'package:auto_route_test/models/quiz/question_type.dart';
import 'package:auto_route_test/screens/quiz/widgets/multi_select_options.dart';
import 'package:auto_route_test/screens/quiz/widgets/single_select_options.dart';
import 'package:flutter/material.dart';

@RoutePage()
class QuestionPage extends StatelessWidget {
  final Question question;
  final Function(BuildContext) onNext;

  const QuestionPage({
    super.key,
    required this.question,
    required this.onNext,
    @PathParam('index') required int index,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 16.0,
          ),
          child: Center(
            child: Text(question.text),
          ),
        ),
        switch (question.questionType) {
          QuestionType.singleSelect => SingleSelectOptions(
              optionsLayoutType: question.optionsLayoutType,
              options: question.quizOptions,
              onNext: onNext,
            ),
          QuestionType.multiSelect => MultiSelectOptions(
              optionsLayoutType: question.optionsLayoutType,
              options: question.quizOptions,
              onNext: onNext,
            ),
        }
      ],
    );
  }
}
