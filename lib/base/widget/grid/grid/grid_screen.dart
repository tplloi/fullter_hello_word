import 'package:flutter/material.dart';
import 'package:hello_word/base/util/UIUtils.dart';
import 'package:hello_word/base/widget/grid/grid/my_grid_view.dart';

class GridScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils().getAppBar(
        "GridScreen",
        () => Navigator.pop(context),
      ),
      body: MyGridView().build(),
    );
  }
}
