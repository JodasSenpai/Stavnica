import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:stavnica/presentation/router.gr.dart';

class NavigationPage extends StatelessWidget {
  const NavigationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
        routes: const [MatchRouter(), BeterRouter()],
        bottomNavigationBuilder: (context, tabsRouter) {
          return SalomonBottomBar(
            margin: const EdgeInsets.symmetric(
              horizontal: 40,
              vertical: 10,
            ),
            currentIndex: tabsRouter.activeIndex,
            onTap: (index) {
              tabsRouter.setActiveIndex(index);
            },
            unselectedItemColor: Colors.grey[350],
            items: [
              SalomonBottomBarItem(
                selectedColor: Colors.purple,
                icon: const Icon(
                  Icons.gamepad,
                  size: 30,
                ),
                title: const Text('Tekme'),
              ),
              SalomonBottomBarItem(
                selectedColor: Colors.green,
                icon: const Icon(
                  Icons.person,
                  size: 30,
                ),
                title: const Text('Stavnica'),
              ),
            ],
          );
        });
  }
}
