import 'package:flutter/material.dart';

import '../widgets/custom_app_menu_widget.dart';
import '../widgets/custom_subtitle_widget.dart';
import '../widgets/custom_text_button_widget.dart';
import '../widgets/custom_title_text_widget.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
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
          const CustomSubTitleTextWidget(subtitle: 'Stateful'),
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
