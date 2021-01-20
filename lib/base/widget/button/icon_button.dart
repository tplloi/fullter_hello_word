import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text("IconButtonWidget"),
      ),
      body: Center(
        child: IconButtonWidget(),
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

/// This is the stateless widget that the main application instantiates.
class IconButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Ink(
            decoration: ShapeDecoration(
              color: Colors.green,
              shape: CircleBorder(),
            ),
            child: IconButton(
              icon: Icon(Icons.android),
              color: Colors.white,
              onPressed: () {
                print("You Pressed the icon!");
              },
            ),
          ),
        ),
      ),
    );
  }
}
