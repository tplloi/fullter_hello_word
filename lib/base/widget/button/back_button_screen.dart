import 'package:flutter/material.dart';
import 'package:hello_word/base/util/ui_utils.dart';

class BackButtonScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils().getAppBar(
        "BackButtonScreen",
        () => Navigator.pop(context),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            //'BackButton basic use'
            SizedBox(height: 20),
            BackButton(color: Colors.red),

            SizedBox(height: 20),
            //'CloseButton has the same function as BackButton, with different icons'
            CloseButton(),
          ],
        ),
      ),
    );
  }
}
