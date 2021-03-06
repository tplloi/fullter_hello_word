import 'package:flutter/material.dart';
import 'package:hello_word/base/util/UIUtils.dart';

class PopupMenuButtonScreen extends StatefulWidget {
  @override
  _PopupMenuButtonScreenState createState() => _PopupMenuButtonScreenState();
}

enum Selections { java, c, swift, dart }

class _PopupMenuButtonScreenState extends State<PopupMenuButtonScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils().getAppBar(
        "PopupMenuButtonScreen",
        () => Navigator.pop(context),
        null,
      ),
      body: Center(
        child: PopupMenuButton<Selections>(
          icon: Icon(Icons.input),
          onSelected: (Selections result) {
            print("onSelected " + result.toString());
          },
          itemBuilder: (BuildContext context) => <PopupMenuEntry<Selections>>[
            const PopupMenuItem<Selections>(
              value: Selections.java,
              child: Text('Choose java'),
            ),
            const PopupMenuItem<Selections>(
              value: Selections.c,
              child: Text('Choose c'),
            ),
            const PopupMenuItem<Selections>(
              value: Selections.swift,
              child: Text('Choose swift'),
            ),
            const PopupMenuDivider(),
            const PopupMenuItem<Selections>(
              value: Selections.dart,
              child: Text('Choose dart'),
            ),
          ],
        ),
      ),
    );
  }
}
