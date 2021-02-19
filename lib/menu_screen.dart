import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MenuScreen());
}

class MenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Main Menu"),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => SystemNavigator.pop(),
        ),
      ),
      body: Center(
        child: Image.network(
          'https://flutter.dev/assets/flutter-lockup-1caf6476beed76adec3c477586da54de6b552b2f42108ec5bc68dc63bae2df75.png',
          width: 200,
          height: 200,
        ),
      ),
    );
  }
}
