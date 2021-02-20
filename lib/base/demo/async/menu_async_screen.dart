import 'package:flutter/material.dart';
import 'package:hello_word/base/demo/async/stream_builder.dart';
import 'package:hello_word/base/util/ui_utils.dart';

import 'future_builder_screen.dart';

class MenuAsyncScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils().getAppBar(
          "Demo async",
          () => {
                Navigator.pop(context),
              }),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            UIUtils().getRaisedButton(
              "FutureBuilderScreen",
                  () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FutureBuilderScreen()),
                )
              },
            ),
            UIUtils().getRaisedButton(
              "StreamBuilderScreen",
                  () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => StreamBuilderScreen()),
                )
              },
            ),
          ],
        ),
      ),
    );
  }
}
