import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/counter_provider.dart';
import '../widgets/custom_subtitle_widget.dart';
import '../widgets/custom_text_button_widget.dart';
import '../widgets/custom_title_text_widget.dart';

class CounterProviderView extends StatelessWidget {
  const CounterProviderView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => CounterProvider(),
      child: const _CounterProviderBody(),
    );
  }
}

class _CounterProviderBody extends StatelessWidget {
  const _CounterProviderBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final counterProvider = Provider.of<CounterProvider>(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const CustomSubTitleTextWidget(subtitle: 'Provider'),
        CustomTitleTextWidget(title: 'Contador: ${counterProvider.count}'),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomTextButtonWidget(
              title: 'Increment',
              onPressed: counterProvider.increment,
            ),
            CustomTextButtonWidget(
              color: Colors.red,
              title: 'Decrement',
              onPressed: counterProvider.decrement,
            ),
          ],
        ),
      ],
    );
  }
}
