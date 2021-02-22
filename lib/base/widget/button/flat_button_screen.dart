import 'package:flutter/material.dart';
import 'package:hello_word/base/util/ui_utils.dart';

class FlatButtonScreen extends StatefulWidget {
  @override
  _FlatButtonScreenState createState() => _FlatButtonScreenState();
}

class _FlatButtonScreenState extends State<FlatButtonScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils().getAppBar(
        "FlatButtonScreen",
        () => Navigator.pop(context),
      ),
      body: Center(
        child: FlatButton(
          color: Colors.blue,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => RaisedButtonScreen()),
            );
          },
          child: Text(
            "FlatButtonScreen",
          ),
        ),
      ),
    );
  }
}

class RaisedButtonScreen extends StatefulWidget {
  @override
  _RaisedButtonScreenState createState() => _RaisedButtonScreenState();
}

class _RaisedButtonScreenState extends State<RaisedButtonScreen> {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        Navigator.pop(context);
      },
      child: Text('RaisedButton'),
    );
  }
}
