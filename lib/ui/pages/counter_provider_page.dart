import 'package:flutter/material.dart';

import '../widgets/custom_app_menu_widget.dart';
import '../widgets/custom_subtitle_widget.dart';
import '../widgets/custom_text_button_widget.dart';
import '../widgets/custom_title_text_widget.dart';

class CounterProviderPage extends StatefulWidget {
  const CounterProviderPage({Key? key}) : super(key: key);

  @override
  State<CounterProviderPage> createState() => _CounterProviderPageState();
}

class _CounterProviderPageState extends State<CounterProviderPage> {
  int counter = 0;

  void _increment() {
    setState(() {
      counter++;
    });
  }

  void _decrement() {
    setState(() {
      counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CustomAppMenuWidget(),
          const Spacer(),
          const CustomSubTitleTextWidget(subtitle: 'Provider'),
          CustomTitleTextWidget(title: 'Contador: $counter'),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomTextButtonWidget(
                title: 'Increment',
                onPressed: _increment,
              ),
              CustomTextButtonWidget(
                color: Colors.red,
                title: 'Decrement',
                onPressed: _decrement,
              ),
            ],
          ),
          const Spacer()
        ],
      ),
    );
  }
}
