import 'package:flutter/material.dart';
import 'package:hello_word/base/util/ui_utils.dart';
import 'file:///D:/LoitppFlutter/hello_word/lib/base/widget/edit_text/search_delegate/search_delegate_screen.dart';

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
            UIUtils().getRaisedButton(
              "SearchDelegateScreen",
                  () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SearchDelegateScreen()),
                )
              },
            ),
          ],
        ),
      ),
    );
  }
}