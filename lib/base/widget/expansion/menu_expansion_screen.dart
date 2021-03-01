import 'package:flutter/material.dart';
import 'package:hello_word/base/util/UIUtils.dart';

import '1/expansion_panel.dart';
import '2/expansion_panel_2.dart';

class MenuExpansionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils().getAppBar(
          "MenuExpansionScreen",
          () => {
                Navigator.pop(context),
              }),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            UIUtils().getRaisedButton(
              "Expansion1Screen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Expansion1Screen()),
                )
              },
            ),
            UIUtils().getRaisedButton(
              "ExpansionPanelScreen2",
                  () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ExpansionPanelScreen2()),
                )
              },
            ),
          ],
        ),
      ),
    );
  }
}
