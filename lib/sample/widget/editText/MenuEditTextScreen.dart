import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/util/UIUtils.dart';

import 'EditTextScreen.dart';
import 'FormFieldScreen.dart';
import 'searchDelegate/SearchDelegateScreen.dart';
import 'textField/TextFieldScreen.dart';

class MenuEditTextScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "MenuEditTextScreen",
        () => {
          Get.back(),
        },
        null,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            UIUtils.getButton(
              "EditTextScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EditTextScreen()),
                )
              },
            ),
            UIUtils.getButton(
              "FormFieldScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FormFieldScreen()),
                )
              },
            ),
            UIUtils.getButton(
              "SearchDelegateScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SearchDelegateScreen()),
                )
              },
            ),
            UIUtils.getButton(
              "TextFieldScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TextFieldScreen()),
                )
              },
            ),
          ],
        ),
      ),
    );
  }
}
