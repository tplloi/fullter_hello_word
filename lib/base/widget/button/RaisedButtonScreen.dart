import 'package:flutter/material.dart';
import 'package:hello_word/base/util/UIUtils.dart';

class RaisedButtonScreen extends StatefulWidget {
  @override
  _RaisedButtonScreenState createState() => _RaisedButtonScreenState();
}

class _RaisedButtonScreenState extends State<RaisedButtonScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils().getAppBar(
        "RaisedButtonScreen",
        () => Navigator.pop(context),
        null,
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {},
          child: Text('RaisedButton'),
        ),
      ),
    );
  }
}
