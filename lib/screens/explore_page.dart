import 'package:auto_route/auto_route.dart';
import 'package:auto_route_test/routing/app_router.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Explore'),
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(
              onPressed: () {
                context.pushRoute(ByteRoute(id: 2));
              },
              child: const Text('Byte page'),
            ),
          ],
        ),
      ),
    );
  }
}
