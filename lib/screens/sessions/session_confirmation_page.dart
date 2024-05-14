import 'package:auto_route/auto_route.dart';
import 'package:auto_route_test/routing/app_router.dart';
import 'package:auto_route_test/routing/extensions/stack_route_extension.dart';
import 'package:darq/darq.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SessionConfirmationPage extends StatelessWidget {
  final bool fromBottomDialog;
  const SessionConfirmationPage({super.key, this.fromBottomDialog = false});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Confirm session'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                // final routes = context.router.stack
                //     .map((e) => e.routeData.route)
                //     .reverse()
                //     .toList();

                // final b = context.router.stack.map((e) => e.routeData).toList();

                // final index = routes
                //     .indexWhere((element) => element.name == TabRoute.name);

                // for (int i = 0; i < index; i++) {
                //   print(b.last.path);
                //   context.router.removeRoute(b.last, notify: false);
                //   b.removeLast();
                // }

                // context.router.removeUntilKek(TabRoute.name);

                // context.pushRoute(const BottomSessionSummaryRoute());

                // print(context.router.stackData);

                // context.router.markUrlStateForReplace();

                // context.router
                //     .removeUntil((route) => route.name == TabRoute.name);
                // context.pushRoute(
                //   fromBottomDialog
                //       ? const BottomSessionSummaryRoute()
                //       : const SessionSummaryRoute(),
                // );

                context.router.pushAndRemoveUntil(
                  fromBottomDialog
                      ? const BottomSessionSummaryRoute()
                      : const SessionSummaryRoute(),
                  removeUntil: TabRoute.name,
                );
              },
              child: const Text(
                'Replace all and go to session summary page',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
