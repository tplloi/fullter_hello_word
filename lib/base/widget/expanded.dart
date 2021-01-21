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
        title: Text("SliderWidget"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ExpandedWidget(),
            SizedBox(
              height: 100,
            ),
            ExpandedWidget()
          ],
        ),
      ),
    );
  }
}

class ExpandedWidget extends StatefulWidget {
  @override
  _ExpandedWidgetState createState() => _ExpandedWidgetState();
}

class _ExpandedWidgetState extends State<ExpandedWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.teal,
      child: Row(
        children: <Widget>[
          Expanded(
              flex: 4,
              child: Container(
                margin: EdgeInsets.all(10),
                color: Colors.green,
                width: 60,
                height: 60,
              )),
          Expanded(
              flex: 3,
              child: Container(
                margin: EdgeInsets.all(10),
                color: Colors.green,
                width: 60,
                height: 60,
              )),
          Expanded(
              flex: 2,
              child: Container(
                margin: EdgeInsets.all(10),
                color: Colors.green,
                width: 60,
                height: 60,
              )),
          Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.all(10),
                color: Colors.green,
                width: 60,
                height: 60,
              )),
        ],
      ),
    );
  }
}
