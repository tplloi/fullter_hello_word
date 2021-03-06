import 'package:flutter/material.dart';
import 'package:hello_word/base/util/UIUtils.dart';

class ButtonBarScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils().getAppBar(
        "ButtonBarScreen",
        () => Navigator.pop(context),
        null,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ButtonBar(
              alignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                UIUtils().getRaisedButton("Item1", () => {}),
                UIUtils().getRaisedButton("Item2", () => {}),
                UIUtils().getRaisedButton("Item3", () => {}),
                RaisedButton(
                  child: Text('Item4'),
                  color: Colors.red,
                  onPressed: () => {},
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
