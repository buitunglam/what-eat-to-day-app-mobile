import 'package:flutter/material.dart';
import 'package:whattoeattoday/src/core/router/bottom_bar_visibility_observer.dart';
import 'package:whattoeattoday/src/features/home/presentation/pages/home_page.dart';
import 'package:whattoeattoday/src/features/recipe_detail/presentation/pages/receipe_detail_page.dart';
import 'package:whattoeattoday/src/features/search/presentation/pages/search_page.dart';

class HomeTabNavigator extends StatelessWidget {
  final ValueNotifier<bool> showBottomBarNotifier;
  HomeTabNavigator({super.key, required this.showBottomBarNotifier});

  final _navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: _navigatorKey,
      initialRoute: '/home',
      observers: [
        BottomBarVisibilityObserver(
          showBottomBarNotifier,
          {'/search', '/detail'}, // routes to hide bottom bar
        ),
      ],
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/search':
            return MaterialPageRoute(
              builder: (_) => SearchPage(),
              settings: RouteSettings(name: '/search'),
            );
          case '/detail':
            return MaterialPageRoute(
              builder: (_) => ReceipeDetailPage(),
              settings: RouteSettings(name: '/detail'),
            );
          case '/home':
          default:
            return MaterialPageRoute(
              builder: (_) => HomePage(),
              settings: RouteSettings(name: '/home'),
            );
        }
      },
    );
  }
}
