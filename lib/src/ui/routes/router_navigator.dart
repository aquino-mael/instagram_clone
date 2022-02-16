import 'package:flutter/widgets.dart';

class RouterNavigator {
  RouterNavigator._();

  static final navigatorKey = GlobalKey<NavigatorState>();

  static void navigateAndClear(String route) {
    navigatorKey.currentState!.pushNamedAndRemoveUntil(route, (route) => false);
  }
  static void navigateTo(String route) {
    navigatorKey.currentState!.pushNamed(route);
  }
}
