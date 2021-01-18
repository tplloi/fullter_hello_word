import 'package:flutter/material.dart';
import 'package:hello_word/base/util/Utils.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),
        body: Center(
          child: text3(),
        ),
        backgroundColor: Colors.white70,
      ),
    );
  }

  Widget text1() {
    return Text(
      'Hello World!\nLoitp1\nLoitp2\nLoitp3',
      style: TextStyle(fontWeight: FontWeight.bold),
      maxLines: 5,
      textAlign: TextAlign.left,
      textDirection: TextDirection.rtl,
    );
  }

  Widget text2() {
    return Text.rich(
      TextSpan(
        children: <TextSpan>[
          TextSpan(
              text: "Hello ", style: TextStyle(fontStyle: FontStyle.italic)),
          TextSpan(
              text: "World", style: TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }

  Widget text3() {
    return Text(
      'Hello World!\nLoitp1\nLoitp2\nLoitp3',
      style: Utils().getCustomFontTextStyle(),
      maxLines: 5,
      textAlign: TextAlign.left,
      textDirection: TextDirection.rtl,
    );
  }
}
