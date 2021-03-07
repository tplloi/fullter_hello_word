import 'package:flutter/material.dart';
import 'package:hello_word/base/util/UIUtils.dart';
import 'package:hello_word/base/widget/image/GradientScreen.dart';
import 'package:hello_word/base/widget/image/ImageScreen.dart';

class MenuImageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils().getAppBar(
        "MenuImageScreen",
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
              "GradientScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GradientScreen()),
                )
              },
            ),
            UIUtils().getButton(
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
