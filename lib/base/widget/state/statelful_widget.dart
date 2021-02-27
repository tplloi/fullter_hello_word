import 'package:flutter/material.dart';

class StatefulWidgetDemoScreen extends StatefulWidget {
  @override
  StatefulWidgetDemoScreenState createState() {
    return StatefulWidgetDemoScreenState();
  }
}

class StatefulWidgetDemoScreenState extends State<StatefulWidgetDemoScreen> {
  int counter = 0;
  List<String> strings = ['Flutter', 'is', 'cool', "and", "awesome!"];
  String displayedString = "Hello World!";

  void onPressOfButton() {
    setState(() {
      displayedString = strings[counter];
      counter = counter < 4 ? counter + 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("StatefulWidgetDemoScreen"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(displayedString, style: TextStyle(fontSize: 40.0)),
              Padding(padding: EdgeInsets.all(10.0)),
              RaisedButton(
                child: Text(
                  "Press me",
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.red,
                onPressed: onPressOfButton,
              )
            ],
          ),
        ),
      ),
    );
  }
}
