import 'package:auto_route_test/models/quiz/options_layout_type.dart';
import 'package:auto_route_test/models/quiz/question_type.dart';
import 'package:auto_route_test/models/quiz/quiz_option.dart';

class Question {
  final int id;
  final String text;
  final QuestionType questionType;
  final OptionsLayoutType optionsLayoutType;
  final List<QuizOption> quizOptions;

  Question({
    required this.id,
    required this.text,
    required this.questionType,
    required this.optionsLayoutType,
    required this.quizOptions,
  });
}
