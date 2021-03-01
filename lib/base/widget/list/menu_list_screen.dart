import 'package:flutter/material.dart';
import 'package:hello_word/base/util/ui_utils.dart';
import 'package:hello_word/base/widget/list/contact_page_screen/contact_page_screen.dart';
import 'package:hello_word/base/widget/list/list_random_words/list_random_words.dart';
import 'package:hello_word/base/widget/list/list_title_widget/list_tile_screen.dart';

import 'list_body_widget/list_body_screen.dart';
import 'list_search/list_search_screen.dart';
import 'load_more/list_view_load_more.dart';

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
