import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/base/util/UIUtils.dart';

import 'contactPageScreen/ContactPageScreen.dart';
import 'draggableScrollBarDemo/DraggableScrollBarDemo.dart';
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
          Get.back(),
        },
        null,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            UIUtils().getButton(
              "ContactPageScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ContactPageScreen()),
                )
              },
            ),
            UIUtils().getButton(
              "DraggableScrollBarDemo",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DraggableScrollBarDemo()),
                )
              },
            ),
            UIUtils().getButton(
              "RandomWordsScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RandomWordsScreen()),
                )
              },
            ),
            UIUtils().getButton(
              "ListViewSearchScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ListViewSearchScreen()),
                )
              },
            ),
            UIUtils().getButton(
              "ListBodyScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ListBodyScreen()),
                )
              },
            ),
            UIUtils().getButton(
              "ListTileScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ListTileScreen()),
                )
              },
            ),
            UIUtils().getButton(
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
