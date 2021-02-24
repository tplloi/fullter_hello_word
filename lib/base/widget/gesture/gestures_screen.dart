import 'package:flutter/material.dart';
import 'package:hello_word/base/util/ui_utils.dart';

class GestureScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils().getAppBar(
        "GestureScreen",
        () => Navigator.pop(context),
      ),
      body: GestureWidget(
        title: "Test gesture",
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
          _showMaterialDialog(context);
        },
        onDoubleTap: () {
          print("onDoubleTap");
        },
      ),
    );
  }

  void _showMaterialDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (_) => new AlertDialog(
              title: new Text("title"),
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
            ));
  }
}
