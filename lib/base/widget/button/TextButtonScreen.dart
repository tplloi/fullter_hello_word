import 'package:flutter/material.dart';
import 'package:hello_word/base/const/Constants.dart';
import 'package:hello_word/base/util/UIUtils.dart';

class TextButtonScreen extends StatefulWidget {
  @override
  _TextButtonScreenState createState() => _TextButtonScreenState();
}

class _TextButtonScreenState extends State<TextButtonScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils().getAppBar(
        "FlatButtonScreen",
        () => Navigator.pop(context),
        null,
      ),
      body: Center(
        child: TextButton(
          style: TextButton.styleFrom(
            primary: Colors.teal,
            backgroundColor: Colors.yellow,
            // onSurface: Colors.grey,
            textStyle: TextStyle(
              // color: Colors.red,
              fontSize: Constants.text_medium,
              fontStyle: FontStyle.italic,
            ),
            elevation: 5,
            side: BorderSide(color: Colors.pink, width: 2),
            shape: const BeveledRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(45)),
            ),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DummyScreen()),
            );
          },
          onLongPress: () {
            print('Long press');
          },
          child: Text(
            "TextButton",
          ),
        ),
      ),
    );
  }
}

class DummyScreen extends StatefulWidget {
  @override
  _DummyScreenState createState() => _DummyScreenState();
}

class _DummyScreenState extends State<DummyScreen> {
  @override
  Widget build(BuildContext context) {
    return UIUtils().getButton(
      "Tap",
      () => Navigator.pop(context),
    );
  }
}