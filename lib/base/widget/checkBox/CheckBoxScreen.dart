import 'package:flutter/material.dart';
import 'package:hello_word/base/util/UIUtils.dart';

class CheckBoxScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar
      appBar: UIUtils().getAppBar(
        "CheckBoxScreen",
        () => Navigator.pop(context),
        null,
      ),
      body: Container(
        // Another way to set the background color
        decoration: BoxDecoration(color: Colors.white),
        child: Center(
          child: CheckBoxWidget(),
        ),
      ),
    );
  }
}

class CheckBoxWidget extends StatefulWidget {
  @override
  _CheckBoxWidgetState createState() => _CheckBoxWidgetState();
}

class _CheckBoxWidgetState extends State<CheckBoxWidget> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
        activeColor: Colors.red,
        tristate: false,
        value: isChecked,
        onChanged: (value) {
          setState(() {
            isChecked = value;
          });
        });
  }
}
