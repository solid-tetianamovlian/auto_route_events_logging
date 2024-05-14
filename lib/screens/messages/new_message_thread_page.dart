import 'package:auto_route/auto_route.dart';
import 'package:auto_route_test/routing/app_router.dart';
import 'package:flutter/material.dart';

@RoutePage()
class NewMessageThreadPage extends StatelessWidget {
  const NewMessageThreadPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create new message thread'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                context.replaceRoute(const MessageThreadRoute());
              },
              child: const Text(
                'Replace current route with message thread page',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
