import 'package:flutter/material.dart';
import 'package:hello_word/base/util/UIUtils.dart';

class GetXScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils().getAppBar(
        "Demo menu",
        () => {
          Navigator.pop(context),
        },
        null,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[


          ],
        ),
      ),
    );
  }
}
