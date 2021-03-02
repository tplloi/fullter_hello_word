import 'package:flutter/material.dart';

class CustomLogo extends StatelessWidget {
  final double size;

  CustomLogo({this.size = 200.0});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightBlueAccent,
      width: size,
      height: size,
      child: Center(
        child: Image.asset(
          "images/iv.jpg",
          width: size,
          height: size,
        ),
      ),
    );
  }
}
