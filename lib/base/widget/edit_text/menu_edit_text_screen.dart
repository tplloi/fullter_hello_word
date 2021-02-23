import 'package:flutter/material.dart';
import 'package:hello_word/base/util/ui_utils.dart';

import 'edit_text_screen.dart';
import 'form_field_screen.dart';

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
          ],
        ),
      ),
    );
  }
}
