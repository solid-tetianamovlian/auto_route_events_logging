import 'package:auto_route_test/models/quiz/options_layout_type.dart';
import 'package:auto_route_test/models/quiz/quiz_context.dart';
import 'package:auto_route_test/models/quiz/quiz_option.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SelectOptions extends StatelessWidget {
  final OptionsLayoutType optionsLayoutType;
  final List<QuizOption> options;
  final Function(QuizOption) selectOption;

  const SelectOptions({
    super.key,
    required this.optionsLayoutType,
    required this.options,
    required this.selectOption,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<QuizContext>(
      builder: (context, quizContext, _) {
        return GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: optionsLayoutType == OptionsLayoutType.grid ? 2 : 1,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio:
                optionsLayoutType == OptionsLayoutType.grid ? 1 : 5,
          ),
          itemCount: options.length,
          itemBuilder: (context, index) {
            final option = options[index];

            return Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: TextButton(
                onPressed: () => selectOption(option),
                style: TextButton.styleFrom(
                  backgroundColor: quizContext.isOptionSelected(option)
                      ? Colors.yellow
                      : Colors.transparent,
                  padding: const EdgeInsets.symmetric(
                    vertical: 16.0,
                    horizontal: 24.0,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: const BorderSide(color: Colors.blue),
                  ),
                ),
                child: Row(
                  children: [
                    Visibility(
                      visible: option.icon != null,
                      child: option.icon ?? Container(),
                    ),
                    Text(option.text),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
