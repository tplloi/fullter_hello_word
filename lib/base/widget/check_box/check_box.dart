import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyHome(),
    theme: ThemeData(
      primarySwatch: Colors.blue,
      accentColor: Colors.blue,
      backgroundColor: Colors.white,
    ),
  ));
}

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar
      appBar: AppBar(
        // AppBar Title
        title: Text("Checkbox"),
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
