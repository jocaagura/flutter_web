import 'package:flutter/material.dart';
import 'package:flutter_web/ui/widgets/custom_app_menu_widget.dart';

class MainLayoutPage extends StatelessWidget {
  const MainLayoutPage({Key? key, required this.child}) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const CustomAppMenuWidget(),
            Expanded(child: child),
          ],
        ),
      ),
    );
  }
}
