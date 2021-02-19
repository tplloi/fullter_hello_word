import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hello_word/base/util/ui_utils.dart';
import 'package:hello_word/syntax.dart';

class MenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils().getAppBar(
          "Main menu",
          () => {
                SystemNavigator.pop(),
              }),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            UIUtils().getRaisedButton(
              "Syntax",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SyntaxScreen()),
                )
              },
            ),
            UIUtils().getRaisedButton(
              "Animation",
              () => {
                //TODO
                print("Click"),
              },
            ),
            UIUtils().getRaisedButton(
              "Demo",
              () => {
                //TODO
                print("Click"),
              },
            ),
            UIUtils().getRaisedButton(
              "Widget",
              () => {
                //TODO
                print("Click"),
              },
            ),
          ],
        ),
      ),
    );
  }
}
