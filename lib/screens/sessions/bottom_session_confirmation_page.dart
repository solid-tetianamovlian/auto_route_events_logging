import 'package:auto_route/auto_route.dart';
import 'package:auto_route_test/screens/sessions/session_confirmation_page.dart';
import 'package:flutter/material.dart';

@RoutePage()
class BottomSessionConfirmationPage extends StatelessWidget {
  const BottomSessionConfirmationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SessionConfirmationPage(
      fromBottomDialog: true,
    );
  }
}
