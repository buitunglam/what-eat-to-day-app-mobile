import 'package:flutter/material.dart';
import 'package:whattoeattoday/src/core/router/bottom_bar_visibility_observer.dart';
import 'package:whattoeattoday/src/features/notifications/presentations/pages/notifications.dart';

class NotificationsTabNavigator extends StatelessWidget {
  final ValueNotifier<bool> showBottomBarNotifier;
  const NotificationsTabNavigator({
    super.key,
    required this.showBottomBarNotifier,
  });

  @override
  Widget build(BuildContext context) {
    return Navigator(
      initialRoute: '/notifications',
      observers: [
        BottomBarVisibilityObserver(
          showBottomBarNotifier,
          {}, // routes to hide bottom bar
        ),
      ],
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/notifications':
          default:
            return MaterialPageRoute(
              builder: (_) => Notifications(),
              settings: RouteSettings(name: '/notifications'),
            );
        }
      },
    );
  }
}
