import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyHome(),
    // Set the theme's primary color, accent color,
    theme: ThemeData(
      primarySwatch: Colors.blue,
      accentColor: Colors.blue,
      // Set background color
      backgroundColor: Colors.blue,
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
        title: Text("ExpansionPanelWidget"),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Column(
            children: <Widget>[
              SimpleDialogWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

class SimpleDialogWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () => showSimpleDialog(context),
      child: Text('Show SimpleDialog'),
    );
  }

  void showSimpleDialog(BuildContext context) {
    showDialog<Null>(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: Text('SimpleDialog title'),
          contentPadding: EdgeInsets.all(32),
          children: <Widget>[
            SimpleDialogOption(
              child: Text('item 1'),
              onPressed: () {},
            ),
            SimpleDialogOption(
              child: Text('item 2'),
              onPressed: () {},
            ),
            SimpleDialogOption(
              child: Text('item 3'),
              onPressed: () {},
            ),
            SimpleDialogOption(
              child: Text('item 4'),
              onPressed: () {},
            ),
          ],
        );
      },
    );
  }
}
