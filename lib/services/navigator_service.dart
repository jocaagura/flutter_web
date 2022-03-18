import 'package:flutter/material.dart';

class _NavigatorService {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  Future navigateTo(String routeName) {
    return navigatorKey.currentState!.pushNamed(routeName);
  }

  void goBack(String routeNAme) {
    return navigatorKey.currentState!.pop();
  }
}

final navigationService = _NavigatorService();
