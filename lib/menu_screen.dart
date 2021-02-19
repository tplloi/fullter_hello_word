import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hello_word/base/util/utils.dart';

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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            RaisedButton(
              child: new Text(
                'Animation',
                style: Utils().getStyleButton(),
              ),
              onPressed: () => {
                //do something
              },
            ),
          ],
        ),
      ),
    );
  }
}
