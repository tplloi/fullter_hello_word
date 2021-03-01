import 'package:flutter/material.dart';
import 'package:hello_word/base/util/UIUtils.dart';

import 'TextFieldWidget.dart';
import 'TextFormFieldWidget.dart';

class TextFieldScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar
      appBar: UIUtils().getAppBar(
        "TextFieldScreen",
        () => Navigator.pop(context),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFieldWidget(),
            TextFormFieldWidget(),
          ],
        ),
      ),
    );
  }
}