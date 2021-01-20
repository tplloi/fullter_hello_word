import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text("ButtonBarWidget"),
      ),
      body: Center(
        child: ButtonBarWidget(),
      ),
    ),
    // Set the theme's primary color, accent color,
    theme: ThemeData(
      primarySwatch: Colors.green,
      accentColor: Colors.lightGreenAccent,
      // Set background color
      backgroundColor: Colors.black12,
    ),
  ));
}

class ButtonBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ButtonBar(
          alignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            RaisedButton(
              child: Text('Item1'),
              color: Colors.green,
              onPressed: () => {},
            ),
            RaisedButton(
              child: Text('Item2'),
              color: Colors.blue,
              onPressed: () => {},
            ),
            RaisedButton(
              child: Text('Item3'),
              color: Colors.red,
              onPressed: () => {},
            ),
          ],
        ),
      ],
    );
  }
}
