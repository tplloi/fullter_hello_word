import 'package:flutter/material.dart';
import 'package:hello_word/base/util/ui_utils.dart';
import 'package:hello_word/base/widget/grid/grid/grid.dart';

class MenuGridScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils().getAppBar(
          "MenuGridScreen",
          () => {
                Navigator.pop(context),
              }),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            UIUtils().getRaisedButton(
              "GridScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GridScreen()),
                )
              },
            ),
          ],
        ),
      ),
    );
  }
}
