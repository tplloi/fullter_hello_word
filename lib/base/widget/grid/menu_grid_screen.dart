import 'package:flutter/material.dart';
import 'package:hello_word/base/util/UIUtils.dart';
import 'package:hello_word/base/widget/grid/grid/GridScreen.dart';

import 'gridPaper/GridPaperScreen.dart';
import 'infiniteScroll/InfiniteScrollScreen.dart';

class MenuGridScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils().getAppBar(
          "MenuGridScreen",
          () => {
                Navigator.pop(context),
              }),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            UIUtils().getRaisedButton(
              "GridScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GridScreen()),
                )
              },
            ),
            UIUtils().getRaisedButton(
              "GridPaperScreen",
                  () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GridPaperScreen()),
                )
              },
            ),
            UIUtils().getRaisedButton(
              "InfiniteScrollScreen",
                  () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => InfiniteScrollScreen()),
                )
              },
            ),
          ],
        ),
      ),
    );
  }
}
