import 'package:flutter/material.dart';

import 'router/router.dart';
import 'services/navigator_service.dart';
import 'ui/layout/main_layout_page.dart';

void main() {
  FluroProvider.configureRoute();
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
      initialRoute: '/',
      // onGenerateRoute: RouteGenerator.generateRoute,
      onGenerateRoute: FluroProvider.router.generator,
      // navigatorKey: navigationService.navigatorKey,
      navigatorKey: navigationService.navigatorKey,
      builder: (context, child) {
        return MainLayoutPage(
          child: child ?? const CircularProgressIndicator(),
        );
      },
    );
  }
}
