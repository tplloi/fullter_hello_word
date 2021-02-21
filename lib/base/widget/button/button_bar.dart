import 'package:flutter/material.dart';
import 'package:hello_word/base/util/ui_utils.dart';

class ButtonBarScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils().getAppBar(
        "ButtonBarScreen",
        () => Navigator.pop(context),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ButtonBar(
              alignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                RaisedButton(
                  child: Text('Item1'),
                  color: Colors.green,
                  onPressed: () => {},
                ),
                RaisedButton(
                  child: Text('Item2'),
                  color: Colors.blue,
                  onPressed: () => {},
                ),
                RaisedButton(
                  child: Text('Item3'),
                  color: Colors.red,
                  onPressed: () => {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
