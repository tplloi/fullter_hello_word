import 'package:flutter/material.dart';
import 'package:hello_word/base/util/UIUtils.dart';

class OutlineButtonScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils().getAppBar(
        "OutlineButtonScreen",
        () => Navigator.pop(context),
        null,
      ),
      body: Center(
        child: UIUtils().getOutlineButton(
          "OutlineButton",
          () => Navigator.pop(context),
        ),
      ),
    );
  }
}
