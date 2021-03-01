import 'package:flutter/material.dart';
import 'package:hello_word/base/util/UIUtils.dart';

import 'EditTextScreen.dart';
import 'FormFieldScreen.dart';
import 'searchDelegate/SearchDelegateScreen.dart';
import 'textField/TextFieldScreen.dart';

class MenuEditTextScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils().getAppBar(
          "MenuEditTextScreen",
          () => {
                Navigator.pop(context),
              }),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            UIUtils().getRaisedButton(
              "EditTextScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EditTextScreen()),
                )
              },
            ),
            UIUtils().getRaisedButton(
              "FormFieldScreen",
                  () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FormFieldScreen()),
                )
              },
            ),
            UIUtils().getRaisedButton(
              "SearchDelegateScreen",
                  () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SearchDelegateScreen()),
                )
              },
            ),
            UIUtils().getRaisedButton(
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