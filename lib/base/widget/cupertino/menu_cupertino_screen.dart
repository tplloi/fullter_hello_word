import 'package:flutter/material.dart';
import 'package:hello_word/base/util/ui_utils.dart';

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
              "SliverAppBarScreen",
              () => {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => SliverAppBarScreen()),
                // )
              },
            ),
          ],
        ),
      ),
    );
  }
}
