import 'package:flutter/material.dart';

import '../widgets/custom_subtitle_widget.dart';
import '../widgets/custom_text_button_widget.dart';
import '../widgets/custom_title_text_widget.dart';

class Page404View extends StatelessWidget {
  const Page404View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomSubTitleTextWidget(
          subtitle: 'Nowhere view',
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
      ],
    );
  }
}
