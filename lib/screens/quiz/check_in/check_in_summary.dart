import 'dart:collection';

import 'package:auto_route/auto_route.dart';
import 'package:auto_route_test/routing/app_router.dart';
import 'package:auto_route_test/models/quiz/quiz_option.dart';
import 'package:darq/darq.dart';
import 'package:flutter/material.dart';

@RoutePage()
class CheckInSummaryPage extends StatelessWidget {
  final UnmodifiableMapView<int, List<QuizOption>> selectedOptions;
  const CheckInSummaryPage({
    super.key,
    required,
    required this.selectedOptions,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Check-in Summary'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            children: [
              ListView.builder(
                shrinkWrap: true,
                itemCount: selectedOptions.length,
                itemBuilder: (context, index) {
                  final options = selectedOptions[index];

                  if (options!.isEmpty) return Container();

                  return Padding(
                    padding: const EdgeInsets.only(bottom: 16.0),
                    child: Row(
                      children: [
                        Visibility(
                          visible: options.first.icon != null,
                          child: options.first.icon ?? Container(),
                        ),
                        Text(options.first.text),
                      ],
                    ),
                  );
                },
              ),
              TextButton(
                onPressed: () {
                  final answers = selectedOptions.entries
                      .orderBy((entry) => entry.key)
                      .select((element, _) {
                    final value = element.value;
                    if (value.isEmpty) return '';

                    return element.value.first.text;
                  }).toList();

                  context.navigateTo(const TabRoute());
                },
                child: const Text('Save'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
