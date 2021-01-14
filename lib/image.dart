import 'package:flutter/material.dart';

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
          child: sample2(),
        ),
        backgroundColor: Colors.white70,
      ),
    );
  }

  Widget sample() {
    return Image.asset(
      'assets/images/iv.jpg',
      width: 200,
      height: 200,
    );
  }

  Widget sample2() {
    // return Image.network('https://picsum.photos/250?image=9');
    return Image.network('https://github.com/flutter/plugins/raw/master/packages/video_player/video_player/doc/demo_ipod.gif?raw=true');
  }
}
