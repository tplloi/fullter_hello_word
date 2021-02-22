import 'package:flutter/material.dart';
import 'package:hello_word/base/util/ui_utils.dart';

class AccountScreen extends StatelessWidget {
  static const String routeName = "/account";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils().getAppBar(
        "AccountScreen",
        () => Navigator.pop(context),
      ),
      body: Container(
        child: Center(
          child: UIUtils().getText("AccountScreen"),
        ),
      ),
    );
  }
}
