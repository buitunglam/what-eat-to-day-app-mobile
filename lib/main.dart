import 'package:flutter/material.dart';
import 'package:whattoeattoday/main_screen.dart';
import 'package:whattoeattoday/src/core/router/auth_tab_navigator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isAuthenticated = true; 
  final ValueNotifier<bool> showBottomBarNotifier = ValueNotifier(true);

  void onLoginSuccess() {
    setState(() {
      isAuthenticated = true;
    });
    showBottomBarNotifier.value = true;
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Poppins'),
      home: isAuthenticated
        ? MainScreen(showBottomBarNotifier: showBottomBarNotifier)
        : AuthNavigator(showBottomBarNotifier: showBottomBarNotifier),
    );
  }
}
