import 'package:flutter/material.dart';
import 'package:whattoeattoday/src/features/intro/presentation/pages/intro_page.dart';
import 'package:whattoeattoday/src/features/login/presentation/pages/login_page.dart';
import 'package:whattoeattoday/src/features/register/presentation/pages/register_page.dart';

class AuthNavigator extends StatelessWidget {
  final ValueNotifier<bool> showBottomBarNotifier;
  const AuthNavigator({super.key, required this.showBottomBarNotifier});

  @override
  Widget build(BuildContext context) {
    return Navigator(
      onGenerateRoute: (settings) {
        Widget page;
        switch (settings.name) {
          case '/intro':
            showBottomBarNotifier.value = false;
            page = IntroPage();
            break;
          case '/register':
            showBottomBarNotifier.value = false;
            page = RegisterPage();
            break;
          case '/login':
          default:
            showBottomBarNotifier.value = false;
            page = LoginPage();
        }

        return MaterialPageRoute(builder: (_) => page, settings: settings);
      },
    );
  }
}
