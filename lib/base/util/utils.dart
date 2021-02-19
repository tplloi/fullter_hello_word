import 'package:flutter/material.dart';

class Utils {
  RaisedButton getRaisedButton(String text, Function() func) {
    return RaisedButton(
      child: new Text(
        text,
        style: Utils().getStyleButton(),
      ),
      onPressed: () => {
        func.call(),
      },
    );
  }

  TextStyle getStyleButton() {
    return TextStyle(
      color: Colors.black,
      fontSize: 16.0,
    );
  }

  TextStyle getCustomFontTextStyle() {
    return TextStyle(
      color: Colors.blueAccent,
      fontFamily: 'Pacifico',
      fontWeight: FontWeight.w400,
      fontSize: 36.0,
    );
  }

  LinearGradient getCustomGradient() {
    return LinearGradient(
        colors: [Colors.pink, Colors.blueAccent],
        begin: const FractionalOffset(0.0, 0.0),
        end: const FractionalOffset(0.6, 0.0),
        stops: [0.0, 0.6],
        tileMode: TileMode.clamp);
  }
}
