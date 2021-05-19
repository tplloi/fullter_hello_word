import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/util/UIUtils.dart';

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
      appBar: UIUtils.getAppBar(
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
            UIUtils.getButton(
              "ContactPageScreen",
              () => {
                Get.to(ContactPageScreen()),
              },
            ),
            UIUtils.getButton(
              "DraggableScrollBarDemo",
              () => {
                Get.to(DraggableScrollBarDemo()),
              },
            ),
            UIUtils.getButton(
              "RandomWordsScreen",
              () => {
                Get.to(RandomWordsScreen()),
              },
            ),
            UIUtils.getButton(
              "ListViewSearchScreen",
              () => {
                Get.to(ListViewSearchScreen()),
              },
            ),
            UIUtils.getButton(
              "ListBodyScreen",
              () => {
                Get.to(ListBodyScreen()),
              },
            ),
            UIUtils.getButton(
              "ListTileScreen",
              () => {
                Get.to(ListTileScreen()),
              },
            ),
            UIUtils.getButton(
              "ListViewLoadMoreScreen",
              () => {
                Get.to(ListViewLoadMoreScreen()),
              },
            ),
          ],
        ),
      ),
    );
  }
}
