import 'package:flutter/material.dart';
import 'package:hello_word/base/util/UIUtils.dart';

class GestureScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils().getAppBar(
        "GestureScreen",
        () => Navigator.pop(context),
        null,
      ),
      body: GestureWidget(
        title: "Tap Or Double Tap Me",
      ),
    );
  }
}

class GestureWidget extends StatelessWidget {
  GestureWidget({Key key, this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        child: Text(
          this.title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
        onTap: () {
          print("onTap");
          _showMaterialDialog(context, "onTap");
        },
        onDoubleTap: () {
          print("onDoubleTap");
          _showMaterialDialog(context, "onDoubleTap");
        },
      ),
    );
  }

  void _showMaterialDialog(
    BuildContext context,
    String title,
  ) {
    showDialog(
      context: context,
      builder: (_) => new AlertDialog(
        title: new Text(title),
        content: new Text(
          "context",
          style: TextStyle(fontSize: 18, color: Colors.red),
        ),
        actions: <Widget>[
          FlatButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text(
              "Action",
              style: TextStyle(fontSize: 25, color: Colors.black),
            ),
          ),
          FlatButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(
                "Close",
              ))
        ],
      ),
    );
  }
}
