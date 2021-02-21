import 'package:flutter/material.dart';
import 'package:hello_word/base/util/ui_utils.dart';

import 'appbar/sliver_app_bar.dart';
import 'bottom_bar/menu_bottom_bar_screen.dart';
import 'bottom_sheet/bottom_sheet_screen.dart';
import 'button/menu_button_screen.dart';

class MenuWidgetScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils().getAppBar(
          "MenuWidgetScreen",
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
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SliverAppBarScreen()),
                )
              },
            ),
            UIUtils().getRaisedButton(
              "MenuBottomBarScreen",
                  () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MenuBottomBarScreen()),
                )
              },
            ),
            UIUtils().getRaisedButton(
              "BottomSheetScreen",
                  () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BottomSheetScreen()),
                )
              },
            ),
            UIUtils().getRaisedButton(
              "MenuButtonScreen",
                  () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MenuButtonScreen()),
                )
              },
            ),
          ],
        ),
      ),
    );
  }
}
