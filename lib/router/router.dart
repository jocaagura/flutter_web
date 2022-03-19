import 'package:fluro/fluro.dart';

import '../ui/views/counter_provider_view.dart';
import '../ui/views/counter_view.dart';
import '../ui/views/page_404_view.dart';

class FluroProvider {
  static final FluroRouter router = FluroRouter();

  static void configureRoute() {
    final Handler _handler =
        Handler(handlerFunc: (context, Map<String, List<String>> parameters) {
      return CounterView(base: parameters["base"]?[0]);
    });

    router.define('/',
        handler: _handler, transitionType: TransitionType.fadeIn);
    router.define('/stateful/:base',
        transitionType: TransitionType.fadeIn, handler: _handler);
    router.define('/stateful',
        transitionType: TransitionType.fadeIn, handler: _handler);

    router.define('/provider', transitionType: TransitionType.fadeIn, handler:
        Handler(handlerFunc: (context, Map<String, List<String>> parameters) {
      final int v = int.tryParse(parameters['base']?[0] ?? "0") ?? 1;
      return CounterProviderView(base: v);
    }));
    router.define('/pruebame/:users/:admin/:ad', transitionType: TransitionType.fadeIn, handler:
        Handler(handlerFunc: (context, Map<String, List<String>> parameters) {
      print(parameters);
      return const Page404View();
    }));
    router.define('/404', transitionType: TransitionType.fadeIn, handler:
        Handler(handlerFunc: (context, Map<String, List<String>> parameters) {
      return const Page404View();
    }));
    router.notFoundHandler =
        Handler(handlerFunc: (context, params) => const Page404View());
  }
}
