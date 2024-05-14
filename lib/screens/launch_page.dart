import 'package:auto_route/auto_route.dart';
import 'package:auto_route_test/routing/app_router.dart';
import 'package:flutter/material.dart';

enum LoginStatus {
  loggedIn,

  notLoggedIn,
}

@RoutePage()
class LaunchPage extends StatelessWidget {
  const LaunchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ColoredBox(
        color: Colors.amber.withOpacity(0.1),
        child: FutureBuilder<LoginStatus>(
          future: _getLoginStatus(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              final loginStatus = snapshot.data as LoginStatus;

              if (loginStatus == LoginStatus.notLoggedIn) {
                context.replaceRoute(const AuthRoute());
                return Container();
              }

              context.replaceRoute(const TabRoute());
              return Container();
            } else {
              return const Center(
                child: CircularProgressIndicator(
                  color: Colors.black,
                ),
              );
            }
          },
        ),
      ),
    );
  }

  Future<LoginStatus> _getLoginStatus() async {
    // final rand = Random().nextInt(100);

    await Future.delayed(const Duration(seconds: 1));
    return LoginStatus.loggedIn;

    // return rand.isEven ? LoginStatus.loggedIn : LoginStatus.loggedIn;
  }
}
