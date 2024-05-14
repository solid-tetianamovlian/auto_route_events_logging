import 'package:auto_route/auto_route.dart';
import 'package:auto_route_test/routing/app_router.dart';
import 'package:flutter/material.dart';

@RoutePage()
class MessagesPage extends StatelessWidget {
  const MessagesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Messages'),
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(
              onPressed: () {
                context.pushRoute(const NewMessageThreadRoute());
              },
              child: const Text('New message thread page'),
            ),
          ],
        ),
      ),
    );
  }
}
