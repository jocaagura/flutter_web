import 'package:flutter/material.dart';

class CustomTitleTextWidget extends StatelessWidget {
  const CustomTitleTextWidget({Key? key, required this.title})
      : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.contain,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          title,
          style: const TextStyle(fontSize: 128, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
