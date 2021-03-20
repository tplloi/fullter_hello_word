import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/common/const/DimenConstants.dart';
import 'package:hello_word/lib/util/UIUtils.dart';

class TextButtonScreen extends StatefulWidget {
  @override
  _TextButtonScreenState createState() => _TextButtonScreenState();
}

class _TextButtonScreenState extends State<TextButtonScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "FlatButtonScreen",
        () => Get.back(),
        null,
      ),
      body: Center(
        child: TextButton(
          style: TextButton.styleFrom(
            primary: Colors.teal,
            backgroundColor: Colors.yellow,
            // onSurface: Colors.grey,
            textStyle: TextStyle(
              // color: Colors.red,
              fontSize: DimenConstants.txtMedium,
              fontStyle: FontStyle.italic,
            ),
            elevation: 5,
            side: BorderSide(color: Colors.pink, width: 2),
            shape: const BeveledRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(45)),
            ),
          ),
          onPressed: () {
            Get.to(DummyScreen());
          },
          onLongPress: () {
            print('Long press');
          },
          child: Text(
            "TextButton",
          ),
        ),
      ),
    );
  }
}

class DummyScreen extends StatefulWidget {
  @override
  _DummyScreenState createState() => _DummyScreenState();
}

class _DummyScreenState extends State<DummyScreen> {
  @override
  Widget build(BuildContext context) {
    return UIUtils.getButton(
      "Tap",
      () => Get.back(),
    );
  }
}
