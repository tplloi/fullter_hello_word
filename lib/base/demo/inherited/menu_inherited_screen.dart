import 'package:flutter/material.dart';
import 'package:hello_word/base/util/ui_utils.dart';

class MenuInheritedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils().getAppBar(
          "Menu inherited",
          () => {
                Navigator.pop(context),
              }),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            UIUtils().getRaisedButton(
              "Async",
              () => {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => MenuAsyncScreen()),
                // )
              },
            ),
          ],
        ),
      ),
    );
  }
}
