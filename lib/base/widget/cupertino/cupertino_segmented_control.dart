import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text("Cupertino"),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 50,
              ),
              CupertinoSegmentedControlWidget(),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    ),
  ));
}

class CupertinoSegmentedControlWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CupertinoSegmentedControl<int>(
          children: {
            1: Padding(
              padding: EdgeInsets.all(5.0),
              child: Text("Segment 1"),
            ),
            2: Padding(
              padding: EdgeInsets.all(5.0),
              child: Text("Segment 2"),
            ),
            3: Padding(
              padding: EdgeInsets.all(5.0),
              child: Text("Segment 3"),
            ),
            4: Padding(
              padding: EdgeInsets.all(5.0),
              child: Text("Segment 4"),
            ),
          },
          onValueChanged: (value) {},
        ),
      ],
    );
  }
}
