import 'package:flutter/material.dart';
import 'package:flutter_web/ui/widgets/custom_app_menu_widget.dart';
import 'package:flutter_web/ui/widgets/custom_text_button_widget.dart';

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
          Text(
            'Contador: $counter',
            style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomTextButtonWidget(
                title: 'Increment',
                function: _increment,
              ),
              CustomTextButtonWidget(
                color: Colors.red,
                title: 'Decrement',
                function: _decrement,
              ),
            ],
          ),
          const Spacer()
        ],
      ),
    );
  }
}
