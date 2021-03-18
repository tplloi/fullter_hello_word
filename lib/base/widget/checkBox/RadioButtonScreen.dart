import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/base/util/UIUtils.dart';

class RadioButtonScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils().getAppBar(
        "RadioButtonScreen",
        () => Get.back(),
        null,
      ),
      body: Container(
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
