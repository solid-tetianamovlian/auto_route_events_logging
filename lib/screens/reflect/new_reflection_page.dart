import 'package:auto_route/auto_route.dart';
import 'package:auto_route_test/routing/app_router.dart';
import 'package:flutter/material.dart';

@RoutePage()
class NewReflectionPage extends StatelessWidget {
  const NewReflectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Reflection'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                context.replaceRoute(const ReflectionSummaryRoute());
              },
              child: const Text(
                'Replace current route with reflection summary page',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
