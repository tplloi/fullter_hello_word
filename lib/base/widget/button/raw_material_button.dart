import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text("RawMaterialButtonWidget"),
      ),
      body: Center(
        child: RawMaterialButtonWidget(),
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

class RawMaterialButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //RawMaterialButton basic use
    return RawMaterialButton(
      onPressed: () {},
      child: Text('RawMaterialButton'),
    );
  }
}
