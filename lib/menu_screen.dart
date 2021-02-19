import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MenuScreen(),
  ));
}

class MenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Menu"),
        ),
        body: Center(
          child: Image.network(
            'https://flutter.dev/assets/flutter-lockup-1caf6476beed76adec3c477586da54de6b552b2f42108ec5bc68dc63bae2df75.png',
            width: 200,
            height: 200,
          ),
        ),
      ),
    );
  }
}
