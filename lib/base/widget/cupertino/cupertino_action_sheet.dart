import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text("CupertinoActionSheetWidget"),
      ),
      body: Center(
        child: CupertinoActionSheetWidget(),
      ),
    ),
    // Set the theme's primary color, accent color,
    theme: ThemeData(
      primarySwatch: Colors.green,
      accentColor: Colors.lightGreenAccent,
      // Set background color
      backgroundColor: Colors.black12,
    ),
  ));
}

class CupertinoActionSheetWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () => showActionSheet(context),
      child: Text('Show ActionSheet'),
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
              onPressed: () {},
            ),
            CupertinoActionSheetAction(
              child: Text('ActionSheet Item2'),
              onPressed: () {},
            ),
            CupertinoActionSheetAction(
              child: Text('ActionSheet Item3'),
              onPressed: () {},
            ),
          ],
          cancelButton: CupertinoActionSheetAction(
            isDefaultAction: true,
            child: Text('Cancel'),
            onPressed: () {},
          ),
        );
      },
    );
  }
}
