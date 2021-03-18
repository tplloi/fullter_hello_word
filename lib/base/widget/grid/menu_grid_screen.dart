import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
          Get.back(),
        },
        null,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            UIUtils().getButton(
              "GridScreen",
              () => {
                Get.to(GridScreen()),
              },
            ),
            UIUtils().getButton(
              "GridPaperScreen",
              () => {
                Get.to(GridPaperScreen()),
              },
            ),
            UIUtils().getButton(
              "InfiniteScrollScreen",
              () => {
                Get.to(InfiniteScrollScreen()),
              },
            ),
          ],
        ),
      ),
    );
  }
}
