import 'package:flutter/material.dart';
import 'package:flutter_web/router/route_generator.dart';

import '../ui/pages/counter_page.dart';
import '../ui/pages/counter_provider_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rutas app',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // initialRoute: '/stateful',
      // routes: {
      //   '/stateful': (BuildContext context) => const CounterPage(),
      //   '/provider': (BuildContext context) => const CounterProviderPage()
      // },
      // onGenerateRoute: (settings) => RouterGenerator.generateRoute(settings),
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
