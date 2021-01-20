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
        title: Text("CardWidget"),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Column(
            children: <Widget>[
              CardWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

class CardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        color: Colors.pink,
        elevation: 10,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const ListTile(
              leading: Icon(Icons.album, size: 70),
              title: Text('Flutter ', style: TextStyle(color: Colors.white)),
              subtitle: Text('Dev', style: TextStyle(color: Colors.white)),
            ),
            ButtonBar(
              children: <Widget>[
                FlatButton(
                  child:
                      const Text('Edit', style: TextStyle(color: Colors.white)),
                  onPressed: () {},
                ),
                FlatButton(
                  child: const Text('Delete',
                      style: TextStyle(color: Colors.white)),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
