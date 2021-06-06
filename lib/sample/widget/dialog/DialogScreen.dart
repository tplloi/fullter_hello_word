import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/util/uI_utils.dart';

class DialogScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "DialogScreen",
        () {
          Get.back();
        },
        null,
      ),
      body: Center(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
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
    return UIUtils.getButton("Show SimpleDialog", () {
      _showSimpleDialog(context);
    });
  }

  void _showSimpleDialog(BuildContext context) {
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
                Get.back();
              },
            ),
            SimpleDialogOption(
              child: Text('item 2'),
              onPressed: () {
                Get.back();
              },
            ),
            SimpleDialogOption(
              child: Text('item 3'),
              onPressed: () {
                Get.back();
              },
            ),
            SimpleDialogOption(
              child: Text('item 4'),
              onPressed: () {
                Get.back();
              },
            ),
          ],
        );
      },
    );
  }
}
