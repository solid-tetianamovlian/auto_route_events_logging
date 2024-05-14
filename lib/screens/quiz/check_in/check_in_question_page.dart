import 'package:auto_route/auto_route.dart';
import 'package:auto_route_test/models/quiz/question.dart';
import 'package:flutter/material.dart';

@RoutePage()
class CheckInQuestionPage extends StatelessWidget {
  final Question question;
  const CheckInQuestionPage({super.key, required this.question});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(question.text),
        ),
      ],
    );
  }
}
