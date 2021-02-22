import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello_word/base/util/ui_utils.dart';

class CupertinoActionSheetScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils().getAppBar(
          "CupertinoActionSheetScreen", () => Navigator.pop(context)),
      body: Center(
        child: RaisedButton(
          onPressed: () => showActionSheet(context),
          child: Text('Show ActionSheet'),
        ),
      ),
    );
  }

  Future<void> showActionSheet(BuildContext context) async {
    return showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) {
        return CupertinoActionSheet(
          title: Text('ActionSheet'),
          message: Text('ActionSheet message'),
          actions: <Widget>[
            CupertinoActionSheetAction(
              child: Text('ActionSheet Item1'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            CupertinoActionSheetAction(
              child: Text('ActionSheet Item2'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            CupertinoActionSheetAction(
              child: Text('ActionSheet Item3'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
          cancelButton: CupertinoActionSheetAction(
            isDefaultAction: true,
            child: Text('Cancel'),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        );
      },
    );
  }
}
