import 'package:flutter/material.dart';
import 'package:hello_word/base/util/UIUtils.dart';
import 'package:hello_word/base/widget/image/gradient_screen.dart';
import 'package:hello_word/base/widget/image/image_screen.dart';

class MenuImageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils().getAppBar(
          "MenuImageScreen",
          () => {
                Navigator.pop(context),
              }),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            UIUtils().getRaisedButton(
              "GradientScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GradientScreen()),
                )
              },
            ),
            UIUtils().getRaisedButton(
              "ImageScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ImageScreen()),
                )
              },
            ),
          ],
        ),
      ),
    );
  }
}
