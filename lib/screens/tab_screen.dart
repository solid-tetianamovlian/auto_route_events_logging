import 'package:auto_route/auto_route.dart';
import 'package:auto_route_test/routing/app_router.dart';
import 'package:auto_route_test/deeplinks/deep_links_handler.dart';
import 'package:flutter/material.dart';

@RoutePage()
class TabPage extends StatelessWidget {
  const TabPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        HomeRoute(),
        ReflectRoute(),
        ExploreRoute(),
        SessionsRoute(),
        MessagesRoute(),
        LogsRoute(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return DeepLinksHandler(
          selectTab: (index) => tabsRouter.setActiveIndex(index),
          child: BottomNavigationBar(
            currentIndex: tabsRouter.activeIndex,
            onTap: tabsRouter.setActiveIndex,
            backgroundColor: Colors.white,
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.format_align_justify),
                label: 'Reflect',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.explore),
                label: 'Explore',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.help),
                label: 'Sessions',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.sms),
                label: 'Messages',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.file_open),
                label: 'Logs',
              ),
            ],
          ),
        );
      },
    );
  }
}
