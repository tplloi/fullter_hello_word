import 'package:flutter/material.dart';
import 'package:hello_word/base/util/ui_utils.dart';

import 'cupertino_action_sheet_screen.dart';

class MenuCupertinoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils().getAppBar(
          "MenuCupertinoScreen",
          () => {
                Navigator.pop(context),
              }),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            UIUtils().getRaisedButton(
              "CupertinoActionSheetScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CupertinoActionSheetScreen()),
                )
              },
            ),
          ],
        ),
      ),
    );
  }
}
