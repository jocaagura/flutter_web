import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';

import '/ui/pages/counter_provider_page.dart';
import '/ui/pages/page_404.dart';
import '../ui/pages/counter_page.dart';

class RouteGenerator {
  static PageRoute generateRoute(RouteSettings settings) {
    final Map<String, PageRoute> _routes = {
      '/stateful': _fadePageRoute(const CounterPage(), '/stateful'),
      '/provider': _fadePageRoute(const CounterProviderPage(), '/provider'),
      '/404': _fadePageRoute(const Page404(), '/404')
    };
    String _key = settings.name ?? "/404";
    if (!_routes.containsKey(_key)) _key = '/404';
    return _routes[_key]!;
  }

  static PageRoute _fadePageRoute(Widget child, String routeName) {
    return PageRouteBuilder(
        settings: RouteSettings(name: routeName),
        pageBuilder: (_, __, ___) => child,
        transitionDuration: const Duration(milliseconds: kIsWeb ? 200 : 750),
        transitionsBuilder: (_, animation, __, ___) => FadeTransition(
                opacity: animation,
                child: child,
              ));
  }
}
