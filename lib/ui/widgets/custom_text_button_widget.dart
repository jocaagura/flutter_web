import 'package:flutter/material.dart';

class CustomTextButtonWidget extends StatelessWidget {
  const CustomTextButtonWidget(
      {Key? key, this.onPressed, required this.title, this.color = Colors.pink})
      : super(key: key);

  final void Function()? onPressed;
  final String title;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: TextButton.styleFrom(primary: color),
        onPressed: onPressed,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(title),
        ));
  }
}
