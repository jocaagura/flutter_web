import 'package:flutter/material.dart';

import '../widgets/custom_subtitle_widget.dart';
import '../widgets/custom_text_button_widget.dart';
import '../widgets/custom_title_text_widget.dart';

class CounterView extends StatefulWidget {
  const CounterView({Key? key}) : super(key: key);

  @override
  State<CounterView> createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {
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
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
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
      ],
    );
  }
}
