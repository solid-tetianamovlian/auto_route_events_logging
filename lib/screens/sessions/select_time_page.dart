import 'package:auto_route/auto_route.dart';
import 'package:auto_route_test/routing/app_router.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SelectTimePage extends StatelessWidget {
  final bool fromBottomDialog;
  const SelectTimePage({
    super.key,
    this.fromBottomDialog = false,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select session time'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                if (fromBottomDialog) {
                  context.pushRoute(const BottomSessionConfirmationRoute());

                  return;
                }
                context.pushRoute(SessionConfirmationRoute());
              },
              child: const Text(
                'Go to confirmation page',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
