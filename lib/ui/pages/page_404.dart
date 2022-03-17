import 'package:flutter/material.dart';
import 'package:flutter_web/ui/widgets/custom_text_button_widget.dart';

import '../widgets/custom_subtitle_widget.dart';
import '../widgets/custom_title_text_widget.dart';

class Page404 extends StatelessWidget {
  const Page404({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Spacer(flex: 1),
          const CustomSubTitleTextWidget(
            subtitle: 'Nowhere',
          ),
          const CustomTitleTextWidget(
            title: '404 Not page found',
          ),
          const Spacer(flex: 2),
          CustomTextButtonWidget(
              title: "Home",
              onPressed: () {
                Navigator.pushNamed(context, '/stateful');
              }),
          const Spacer(flex: 1),
        ],
      ),
    );
  }
}
