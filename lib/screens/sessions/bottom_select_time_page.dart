import 'package:auto_route/auto_route.dart';
import 'package:auto_route_test/screens/sessions/select_time_page.dart';
import 'package:flutter/material.dart';

@RoutePage()
class BottomSelectTimePage extends StatelessWidget {
  const BottomSelectTimePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SelectTimePage(fromBottomDialog: true);
  }
}
