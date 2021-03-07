import 'package:flutter/material.dart';
import 'package:hello_word/base/demo/async/StreamBuilderScreen.dart';
import 'package:hello_word/base/demo/async/ValueListenableBuilderScreen.dart';
import 'package:hello_word/base/util/UIUtils.dart';

import 'FutureBuilderScreen.dart';

class MenuAsyncScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils().getAppBar(
        "Demo async",
        () => {
          Navigator.pop(context),
        },
        null,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            UIUtils().getButton(
              "FutureBuilderScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => FutureBuilderScreen()),
                )
              },
            ),
            UIUtils().getButton(
              "StreamBuilderScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => StreamBuilderScreen()),
                )
              },
            ),
            UIUtils().getButton(
              "ValueListenableBuilderScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ValueListenableBuilderScreen()),
                )
              },
            ),
          ],
        ),
      ),
    );
  }
}
