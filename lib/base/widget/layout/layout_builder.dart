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
        title: Text("LayoutBuilderWidget"),
      ),
      body: LayoutBuilderWidget(),
    );
  }
}

class LayoutBuilderWidget extends StatefulWidget {
  @override
  _LayoutBuilderWidgetState createState() => _LayoutBuilderWidgetState();
}

class _LayoutBuilderWidgetState extends State<LayoutBuilderWidget> {
  double index = 300;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          //'The direct child of LayoutBuilder will match the size of the MatchParent. To maintain the size of the child, you need to add an Align or similar widget.

          Slider(
            value: index,
            min: 300,
            max: 400,
            onChanged: (value) {
              setState(() => index = value);
            },
          ),
          Container(
            color: Colors.red,
            width: index,
            height: index,
            child: LayoutBuilder(builder: (context, constraints) {
              if (constraints.maxWidth < 350) {
                return Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    width: 100,
                    height: 300,
                    color: Colors.yellow,
                  ),
                );
              } else {
                return Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    width: 300,
                    height: 100,
                    color: Colors.blue,
                  ),
                );
              }
            }),
          ),
        ],
      ),
    );
  }
}
