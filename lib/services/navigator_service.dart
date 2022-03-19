import 'package:flutter/material.dart';

class _NavigatorService {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  Future navigateTo(String routeName) {
    print("Push");
    return navigatorKey.currentState!.pushNamed(routeName);
  }

  void goBack(String routeNAme) {
    print('Back');
    return navigatorKey.currentState!.pop();
  }
}

final navigationService = _NavigatorService();
