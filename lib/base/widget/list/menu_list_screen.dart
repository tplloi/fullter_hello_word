import 'package:flutter/material.dart';
import 'package:hello_word/base/util/ui_utils.dart';
import 'package:hello_word/base/widget/list/contact_page_screen/contact_page_screen.dart';
import 'package:hello_word/base/widget/list/list_random_words/list_random_words.dart';

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
          ],
        ),
      ),
    );
  }
}
