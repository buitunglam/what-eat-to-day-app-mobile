import 'package:flutter/material.dart';
import 'package:whattoeattoday/src/features/profile/presentation/pages/profile.dart';

class ProfileTabNavigator extends StatelessWidget {
  final ValueNotifier<bool> showBottomBarNotifier;
  const ProfileTabNavigator({super.key, required this.showBottomBarNotifier});

  @override
  Widget build(BuildContext context) {
    return Navigator(
      onGenerateRoute: (RouteSettings settings) {
        WidgetBuilder builder;
        switch (settings.name) {
          case '/':
            builder = (BuildContext context) => const Profile();
          default:
            builder = (BuildContext context) => const Profile();
        }
        return MaterialPageRoute(builder: builder, settings: settings);
      },
    );
  }
}
