import 'dart:collection';

import 'package:auto_route_test/models/quiz/question_type.dart';
import 'package:auto_route_test/models/quiz/quiz_option.dart';
import 'package:darq/darq.dart';
import 'package:flutter/material.dart';

class QuizContext with ChangeNotifier {
  QuizContext({required int length}) {
    _answers = RangeIterable(0, length)
        .select((element, _) => MapEntry(element, <QuizOption>[]))
        .toMap(
          (element) => element,
          modifiable: true,
        );
  }

  int _currentQuestionIndex = 0;

  QuestionType? _currentQuestionType;

  late final Map<int, List<QuizOption>> _answers;

  UnmodifiableMapView<int, List<QuizOption>> get answers =>
      UnmodifiableMapView(_answers);

  bool isOptionSelected(QuizOption option) {
    final currentAnswers = _answers[_currentQuestionIndex]!;

    if (currentAnswers.contains(option)) return true;

    return false;
  }

  void setActiveQuestionIndex(int index) {
    _currentQuestionIndex = index;
  }

  void setActiveQuestionType(QuestionType questionType) {
    _currentQuestionType = questionType;
  }

  void toggleOption(QuizOption option) {
    switch (_currentQuestionType) {
      case QuestionType.singleSelect:
        _toggleSingleSelectOption(option);
      case QuestionType.multiSelect:
        _toggleMultiSelectOption(option);
      default:
        throw Exception('Wrong question type');
    }

    notifyListeners();
  }

  void skipQuestion() {
    _answers[_currentQuestionIndex] = [];
    notifyListeners();
  }

  void _toggleSingleSelectOption(QuizOption option) {
    _answers[_currentQuestionIndex] = [option];
  }

  void _toggleMultiSelectOption(QuizOption option) {
    final currentAnswers = _answers[_currentQuestionIndex]!;

    if (currentAnswers.contains(option)) {
      currentAnswers.removeWhere((op) => op == option);
    } else {
      currentAnswers.add(option);
    }
  }
}
