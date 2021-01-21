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
        title: Text("SwitchWidget"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SwitchWidget(),
          ],
        ),
      ),
    );
  }
}

class SwitchWidget extends StatefulWidget {
  @override
  _SwitchWidgetState createState() => _SwitchWidgetState();
}

class _SwitchWidgetState extends State<SwitchWidget> {
  bool isCheck = false;

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: isCheck,
      onChanged: (value) {
        print("_SwitchWidgetState value " + value.toString());
        this.setState(() => isCheck = value);
      },
    );
  }
}
