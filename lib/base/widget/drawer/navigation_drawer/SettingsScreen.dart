import 'package:flutter/material.dart';
import 'package:hello_word/base/util/UIUtils.dart';

class SettingsScreen extends StatelessWidget {
  static const String routeName = "/settings";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils().getAppBar(
        "SettingsScreen",
        () => Navigator.pop(context),
      ),
      body: Container(
        child: Center(
          child: UIUtils().getRaisedButton("SettingsScreen", () => null),
        ),
      ),
    );
  }
}