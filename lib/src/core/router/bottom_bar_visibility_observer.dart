import 'package:flutter/material.dart';

class BottomBarVisibilityObserver extends NavigatorObserver {
  final ValueNotifier<bool> notifier;
  final Set<String> hideOnRoutes;

  BottomBarVisibilityObserver(this.notifier, this.hideOnRoutes);

  void _update(Route<dynamic>? route) {
    final name = route?.settings.name ?? '';
    notifier.value = !hideOnRoutes.contains(name);
  }

  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    _update(route);
    super.didPush(route, previousRoute);
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    _update(previousRoute);
    super.didPop(route, previousRoute);
  }
}