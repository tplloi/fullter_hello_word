import 'package:flutter/material.dart';
import 'package:hello_word/base/util/ui_utils.dart';

class RawMaterialButtonScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //RawMaterialButton basic use
    return Scaffold(
      appBar: UIUtils().getAppBar(
        "RawMaterialButtonScreen",
        () => Navigator.pop(context),
      ),
      body: Center(
        child: RawMaterialButton(
          onPressed: () {},
          child: Text('RawMaterialButton'),
        ),
      ),
    );
  }
}
