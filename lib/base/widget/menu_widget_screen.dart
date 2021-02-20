import 'package:flutter/material.dart';
import 'package:hello_word/base/util/ui_utils.dart';

import 'appbar/sliver_app_bar.dart';

class MenuWidgetScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils().getAppBar(
          "MenuWidgetScreen",
          () => {
                Navigator.pop(context),
              }),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            UIUtils().getRaisedButton(
              "SliverAppBarScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SliverAppBarScreen()),
                )
              },
            ),
          ],
        ),
      ),
    );
  }
}
