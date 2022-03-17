import 'package:flutter/material.dart';

class CustomSubTitleTextWidget extends StatelessWidget {
  const CustomSubTitleTextWidget({Key? key, required this.subtitle})
      : super(key: key);

  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.contain,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          subtitle,
          style: const TextStyle(fontSize: 90, fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}
