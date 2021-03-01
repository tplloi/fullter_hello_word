import 'package:flutter/material.dart';
import 'package:hello_word/base/util/UIUtils.dart';

import 'contactPageScreen/ContactPageScreen.dart';
import 'listBodyWidget/ListBodyScreen.dart';
import 'listRandomWords/RandomWordsScreen.dart';
import 'listSearch/ListViewSearchScreen.dart';
import 'listTitleWidget/ListTileScreen.dart';
import 'loadMore/ListViewLoadMoreScreen.dart';

class MenuListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils().getAppBar(
          "MenuListScreen",
          () => {
                Navigator.pop(context),
              }),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            UIUtils().getRaisedButton(
              "ContactPageScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ContactPageScreen()),
                )
              },
            ),
            UIUtils().getRaisedButton(
              "RandomWordsScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RandomWordsScreen()),
                )
              },
            ),
            UIUtils().getRaisedButton(
              "ListViewSearchScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ListViewSearchScreen()),
                )
              },
            ),
            UIUtils().getRaisedButton(
              "ListBodyScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ListBodyScreen()),
                )
              },
            ),
            UIUtils().getRaisedButton(
              "ListTileScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ListTileScreen()),
                )
              },
            ),
            UIUtils().getRaisedButton(
              "ListViewLoadMoreScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ListViewLoadMoreScreen()),
                )
              },
            ),
          ],
        ),
      ),
    );
  }
}
