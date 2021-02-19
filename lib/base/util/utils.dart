import 'package:flutter/material.dart';

class Utils {
  TextStyle getStyleButton() {
    // text style which defines a custom font
    return TextStyle(
      color: Colors.black,
      fontSize: 16.0,
    );
  }

  TextStyle getCustomFontTextStyle() {
    // text style which defines a custom font
    return TextStyle(
      // set color of text
      color: Colors.blueAccent,
      // set the font family as defined in pubspec.yaml
      fontFamily: 'Pacifico',
      // set the font weight
      fontWeight: FontWeight.w400,
      // set the font size
      fontSize: 36.0,
    );
  }

  LinearGradient getCustomGradient() {
    // Define a Linear Gradient
    return LinearGradient(
        colors: [Colors.pink, Colors.blueAccent],
        begin: const FractionalOffset(0.0, 0.0),
        end: const FractionalOffset(0.6, 0.0),
        stops: [0.0, 0.6],
        tileMode: TileMode.clamp);
  }
}
