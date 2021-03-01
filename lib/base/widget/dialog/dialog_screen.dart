import 'package:flutter/material.dart';
import 'package:hello_word/base/util/UIUtils.dart';

class DialogScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar
      appBar: UIUtils().getAppBar(
        "DialogScreen",
        () => Navigator.pop(context),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            child: Column(
              children: <Widget>[
                SimpleDialogWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SimpleDialogWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () => showSimpleDialog(context),
      child: UIUtils().getText("Show SimpleDialog"),
    );
  }

  void showSimpleDialog(BuildContext context) {
    showDialog<Null>(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: Text('SimpleDialog title'),
          contentPadding: EdgeInsets.all(32),
          children: <Widget>[
            SimpleDialogOption(
              child: Text('item 1'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            SimpleDialogOption(
              child: Text('item 2'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            SimpleDialogOption(
              child: Text('item 3'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            SimpleDialogOption(
              child: Text('item 4'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }
}
