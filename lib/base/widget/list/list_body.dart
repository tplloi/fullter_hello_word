import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyHome(),
    theme: ThemeData(
      primarySwatch: Colors.blue,
      accentColor: Colors.blue,
      backgroundColor: Colors.white,
    ),
  ));
}

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar
      appBar: AppBar(
        // AppBar Title
        title: Text("ListBodyWidget"),
      ),
      body: ListBodyWidget(),
    );
  }
}

class ListBodyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: <Widget>[
        ListBody(
          mainAxis: Axis.vertical,
          reverse: false,
          children: List.generate(10, (index) {
            return Container(
              color: Color(0xFFFFFFFF & Random().nextInt(0xFFFFFFFF)),
              width: 100,
              height: 100,
              child: Text(
                'Item in ListBody',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            );
          }),
        ),
      ],
    );
  }
}
