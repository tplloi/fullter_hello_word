import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/base/util/UIUtils.dart';

class EditTextScreen extends StatefulWidget {
  @override
  EditTextScreenState createState() => EditTextScreenState();
}

class EditTextScreenState extends State<EditTextScreen> {
  String results = "";

  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils().getAppBar(
        "EditTextScreen",
        () => Get.back(),
        null,
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              TextField(
                style: UIUtils().getStyleText(),
                decoration: InputDecoration(
                  hintText: "Enter text here...",
                ),
                onSubmitted: (String str) {
                  setState(() {
                    results = results + "\n" + str;
                    controller.text = "";
                  });
                },
                controller: controller,
              ),
              UIUtils().getText(results),
            ],
          ),
        ),
      ),
    );
  }
}
