import 'package:flutter/material.dart';
import 'package:flutter_web/services/navigator_service.dart';

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
              // Navigator.pushNamed(context, '/stateful');
              navigationService.navigateTo( '/stateful');
            },
            color: Colors.black,
          ),
          const SizedBox(
            width: 10.0,
          ),
          CustomTextButtonWidget(
            title: 'Contador Provider',
            onPressed: () {
              // Navigator.pushNamed(context, '/provider');
              navigationService.navigateTo( '/provider');
            },
            color: Colors.blue,
          ),
          const SizedBox(
            width: 10.0,
          ),
          CustomTextButtonWidget(
            title: 'NowHere',
            onPressed: () {
             // Navigator.pushNamed(context, '/noexiste');
              navigationService.navigateTo( '/noexiste');
            },
            color: Colors.red,
          ),
        ],
      ),
    );
  }
}
