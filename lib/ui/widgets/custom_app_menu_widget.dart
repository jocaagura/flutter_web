import 'package:flutter/material.dart';

import '../widgets/custom_text_button_widget.dart';

class CustomAppMenuWidget extends StatelessWidget {
  const CustomAppMenuWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("Build menuApp");
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: Row(
        children: [
          CustomTextButtonWidget(
            title: 'Contador Stateful',
            onPressed: () {
              Navigator.pushNamed(context, '/stateful');
            },
            color: Colors.black,
          ),
          const SizedBox(
            width: 10.0,
          ),
          CustomTextButtonWidget(
            title: 'Contador Provider',
            onPressed: () {
              Navigator.pushNamed(context, '/provider');
            },
            color: Colors.blue,
          ),
          const SizedBox(
            width: 10.0,
          ),
          CustomTextButtonWidget(
            title: 'NowHere',
            onPressed: () {
              Navigator.pushNamed(context, '/noexiste');
            },
            color: Colors.red,
          ),
        ],
      ),
    );
  }
}
