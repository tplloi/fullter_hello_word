import 'package:flutter/material.dart';
import 'package:hello_word/base/util/ui_utils.dart';

import 'appbar/sliver_app_bar.dart';
import 'bottom_bar/menu_bottom_bar_screen.dart';
import 'bottom_sheet/bottom_sheet_screen.dart';
import 'button/menu_button_screen.dart';
import 'card/card_screen.dart';
import 'check_box/check_box_screen.dart';
import 'check_box/radio_button_screen.dart';
import 'cupertino/menu_cupertino_screen.dart';
import 'data_table/data_table_screen.dart';
import 'dialog/dialog_screen.dart';
import 'drawer/menu_drawer_screen.dart';
import 'edit_text/menu_edit_text_screen.dart';

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
            UIUtils().getRaisedButton(
              "CardScreen",
                  () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CardScreen()),
                )
              },
            ),
            UIUtils().getRaisedButton(
              "CheckBoxScreen",
                  () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CheckBoxScreen()),
                )
              },
            ),
            UIUtils().getRaisedButton(
              "RadioButtonScreen",
                  () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RadioButtonScreen()),
                )
              },
            ),
            UIUtils().getRaisedButton(
              "MenuCupertinoScreen",
                  () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MenuCupertinoScreen()),
                )
              },
            ),
            UIUtils().getRaisedButton(
              "DataTableScreen",
                  () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DataTableScreen()),
                )
              },
            ),
            UIUtils().getRaisedButton(
              "DialogScreen",
                  () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DialogScreen()),
                )
              },
            ),
            UIUtils().getRaisedButton(
              "MenuDrawerScreen",
                  () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MenuDrawerScreen()),
                )
              },
            ),
            UIUtils().getRaisedButton(
              "MenuEditTextScreen",
                  () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MenuEditTextScreen()),
                )
              },
            ),

          ],
        ),
      ),
    );
  }
}
