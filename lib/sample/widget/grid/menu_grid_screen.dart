import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/common/const/dimen_constants.dart';
import 'package:hello_word/lib/util/uI_utils.dart';
import 'package:hello_word/sample/widget/grid/grid_paper/grid_paper_screen.dart';
import 'package:hello_word/sample/widget/grid/infinite_scroll/infinite_scroll_screen.dart';

import 'grid/grid_screen.dart';

class MenuGridScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "MenuGridScreen",
        () {
          Get.back();
        },
        null,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.all(DimenConstants.marginPaddingMedium),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            UIUtils.getButton(
              "GridScreen",
              () {
                Get.to(GridScreen());
              },
            ),
            UIUtils.getButton(
              "GridPaperScreen",
              () {
                Get.to(GridPaperScreen());
              },
            ),
            UIUtils.getButton(
              "InfiniteScrollScreen",
              () {
                Get.to(InfiniteScrollScreen());
              },
            ),
          ],
        ),
      ),
    );
  }
}
