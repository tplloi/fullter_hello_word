import 'package:flutter/material.dart';
import 'package:hello_word/base/util/ui_utils.dart';

class RadioButtonScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar
      appBar: UIUtils().getAppBar(
        "RadioButtonScreen",
        () => Navigator.pop(context),
      ),
      body: Container(
        // Another way to set the background color
        decoration: BoxDecoration(color: Colors.white),
        child: Center(
          child: RadioWidget(),
        ),
      ),
    );
  }
}

class RadioWidget extends StatefulWidget {
  @override
  _RadioWidgetState createState() => _RadioWidgetState();
}

class _RadioWidgetState extends State<RadioWidget> {
  var selectValue = 1;

  onChange(value) {
    setState(() => selectValue = value);
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Radio(
          value: 1,
          groupValue: selectValue,
          onChanged: (value) => onChange(value),
        ),
        Radio(
          value: 2,
          groupValue: selectValue,
          onChanged: (value) => onChange(value),
        ),
        Radio(
          value: 3,
          groupValue: selectValue,
          onChanged: (value) => onChange(value),
        ),
      ],
    );
  }
}