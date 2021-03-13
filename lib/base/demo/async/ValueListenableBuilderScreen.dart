import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/base/util/UIUtils.dart';

class ValueListenableBuilderScreen extends StatefulWidget {
  @override
  _ValueListenableBuilderScreenState createState() =>
      _ValueListenableBuilderScreenState();
}

class _ValueListenableBuilderScreenState
    extends State<ValueListenableBuilderScreen> {
  int _counter = 0;

  final ValueNotifier<int> _notifier = ValueNotifier<int>(0);

  void _incrementCounter() {
    _counter++;
    _notifier.value++;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils().getAppBar(
        "ValueListenableBuilderScreen",
        () => Get.back(),
        null,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //'SetState is not called when data is modified, so data not managed by ValueListenableBuilder will not change'
            SizedBox(height: 20),
            ValueListenableBuilder(
              valueListenable: _notifier,
              builder: (context, value, widget) {
                return UIUtils()
                    .getText('Click with ValueListenableBuilder $value');
              },
            ),
            SizedBox(height: 20),
            UIUtils().getText('Click without setState $_counter'),
            SizedBox(height: 20),
            UIUtils().getButton(
                "Click me",
                () => {
                      _incrementCounter(),
                    }),
          ],
        ),
      ),
    );
  }
}
