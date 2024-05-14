import 'package:auto_route/auto_route.dart';
import 'package:auto_route_test/routing/app_router.dart';
import 'package:flutter/material.dart';

@RoutePage()
class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Auth'),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            context.replaceRoute(const TabRoute());
          },
          child: const Text('Log-in'),
        ),
      ),
    );
  }
}
