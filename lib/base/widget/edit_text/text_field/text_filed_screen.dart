import 'package:flutter/material.dart';
import 'package:hello_word/base/util/ui_utils.dart';
import 'package:hello_word/base/widget/edit_text/text_field/text_filed_widget.dart';
import 'package:hello_word/base/widget/edit_text/text_field/text_form_field_widget.dart';

class TextFieldScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar
      appBar: UIUtils().getAppBar(
        "TextFieldScreen",
        () => Navigator.pop(context),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(15),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          SizedBox(
            height: 100,
            child: TextFieldWidget(),
          ),
          SizedBox(
            height: 500,
            child: TextFormFieldWidget(),
          ),
        ]),
      ),
    );
  }
}
