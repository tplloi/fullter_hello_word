import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/base/util/UIUtils.dart';

class ButtonBarScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils().getAppBar(
        "ButtonBarScreen",
        () => Get.back(),
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
                UIUtils().getButton("Item1", () => {}),
                UIUtils().getButton("Item2", () => {}),
                UIUtils().getButton("Item3", () => {}),
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
