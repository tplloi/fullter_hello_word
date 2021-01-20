import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text("RaisedButtonWidget"),
      ),
      body: Center(
        child: BackButtonWidget(),
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

class BackButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        //'BackButton basic use'
        SizedBox(height: 20),
        BackButton(color: Colors.red),

        SizedBox(height: 20),
        //'CloseButton has the same function as BackButton, with different icons'
        CloseButton(),
      ],
    );
  }
}
