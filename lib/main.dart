import 'package:flutter/material.dart';
import 'package:flutter_web/router/route_generator.dart';
import 'package:flutter_web/services/navigator_service.dart';
import 'package:flutter_web/ui/layout/main_layout_page.dart';

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
      initialRoute: '/stateful',
      onGenerateRoute: RouteGenerator.generateRoute,
      navigatorKey: navigationService.navigatorKey,
      builder: (_, child) {
        return MainLayoutPage(
          child: child ?? const CircularProgressIndicator(),
        );
      },
    );
  }
}
