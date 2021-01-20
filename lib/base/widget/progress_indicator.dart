import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyHome(),
    // Set the theme's primary color, accent color,
    theme: ThemeData(
      primarySwatch: Colors.blue,
      accentColor: Colors.blue,
      // Set background color
      backgroundColor: Colors.blue,
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
        title: Text("CircularProgressIndicatorWidget"),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Column(
            children: <Widget>[
              CircularProgressIndicatorWidget(),
              SizedBox(
                height: 50,
              ),
              LinearProgressIndicatorWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

class CircularProgressIndicatorWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      child: CircularProgressIndicator(),
    );
  }
}

class LinearProgressIndicatorWidget extends StatefulWidget {
  @override
  _LinearProgressIndicatorWidgetState createState() =>
      _LinearProgressIndicatorWidgetState();
}

class _LinearProgressIndicatorWidgetState
    extends State<LinearProgressIndicatorWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      width: 300,
      child: LinearProgressIndicator(),
    );
  }
}
