import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hello_word/base/util/ui_utils.dart';
import 'file:///D:/Project/Flutter/fullter_hello_word/lib/base/syntax/syntax_screen.dart';

class MenuAnimationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils().getAppBar(
          "Animation menu",
          () => {
                Navigator.pop(context),
              }),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            UIUtils().getRaisedButton(
              "Align",
              () => {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => SyntaxScreen()),
                // )
              },
            ),
          ],
        ),
      ),
    );
  }
}
