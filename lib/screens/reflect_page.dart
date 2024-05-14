import 'package:auto_route/auto_route.dart';
import 'package:auto_route_test/routing/app_router.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ReflectPage extends StatelessWidget {
  const ReflectPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reflect'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                context.pushRoute(const NewReflectionRoute());
              },
              child: const Text('New reflection page'),
            ),
          ],
        ),
      ),
    );
  }
}
