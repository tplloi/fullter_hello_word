import 'package:flutter/material.dart';
import 'package:hello_word/base/const/Constants.dart';
import 'package:hello_word/base/util/UIUtils.dart';

class RawMaterialButtonScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //RawMaterialButton basic use
    return Scaffold(
      appBar: UIUtils().getAppBar(
        "RawMaterialButtonScreen",
        () => Navigator.pop(context),
        null,
      ),
      body: Center(
        child: RawMaterialButton(
          padding: EdgeInsets.fromLTRB(
            Constants.margin_padding_medium,
            0,
            Constants.margin_padding_medium,
            0,
          ),
          onPressed: () {},
          child: Text('RawMaterialButton'),
        ),
      ),
    );
  }
}
