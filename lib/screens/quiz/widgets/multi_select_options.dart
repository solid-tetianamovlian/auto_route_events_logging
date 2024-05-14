import 'package:auto_route_test/models/quiz/options_layout_type.dart';
import 'package:auto_route_test/models/quiz/quiz_context.dart';
import 'package:auto_route_test/models/quiz/quiz_option.dart';
import 'package:auto_route_test/screens/quiz/widgets/select_options.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MultiSelectOptions extends StatelessWidget {
  final OptionsLayoutType optionsLayoutType;
  final List<QuizOption> options;
  final Function(BuildContext) onNext;

  const MultiSelectOptions({
    super.key,
    required this.options,
    required this.optionsLayoutType,
    required this.onNext,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SelectOptions(
          optionsLayoutType: optionsLayoutType,
          options: options,
          selectOption: (option) {
            final quizContext =
                Provider.of<QuizContext>(context, listen: false);

            quizContext.toggleOption(option);
          },
        ),
        TextButton(
          onPressed: () => onNext(context),
          child: const Text('Next'),
        ),
      ],
    );
  }
}
