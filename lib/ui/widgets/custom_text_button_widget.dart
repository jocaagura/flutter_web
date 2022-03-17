import 'package:flutter/material.dart';

class CustomTextButtonWidget extends StatelessWidget {
  const CustomTextButtonWidget(
      {Key? key, this.function, required this.title, this.color = Colors.pink})
      : super(key: key);

  final void Function()? function;
  final String title;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: TextButton.styleFrom(primary: color),
        onPressed: function,
        child: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text('Increment'),
        ));
  }
}
