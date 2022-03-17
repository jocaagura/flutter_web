import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/counter_provider.dart';
import '../widgets/custom_app_menu_widget.dart';
import '../widgets/custom_subtitle_widget.dart';
import '../widgets/custom_text_button_widget.dart';
import '../widgets/custom_title_text_widget.dart';

class CounterProviderPage extends StatelessWidget {
  const CounterProviderPage({Key? key}) : super(key: key);

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

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CustomAppMenuWidget(),
          const Spacer(),
          const CustomSubTitleTextWidget(subtitle: 'Provider'),
          CustomTitleTextWidget(title: 'Contador: ${counterProvider.count}'),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomTextButtonWidget(
                title: 'Increment',
                onPressed: counterProvider.decrement,
              ),
              CustomTextButtonWidget(
                color: Colors.red,
                title: 'Decrement',
                onPressed: counterProvider.increment,
              ),
            ],
          ),
          const Spacer()
        ],
      ),
    );
  }
}
