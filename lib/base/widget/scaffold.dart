import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ScaffoldWidget(),
    // Set the theme's primary color, accent color,
    theme: ThemeData(
      primarySwatch: Colors.green,
      accentColor: Colors.lightGreenAccent,
      // Set background color
      backgroundColor: Colors.black12,
    ),
  ));
}

class ScaffoldWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Scaffold(
            appBar: AppBar(
              title: Text('Scaffold'),
            ),
            body: Center(
              child: Text('Scaffold'),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {},
              child: Icon(Icons.add),
            ),
            backgroundColor: Colors.cyan,
            drawer: Drawer(
              child: ListView(
                children: <Widget>[
                  UserAccountsDrawerHeader(
                    accountName: Text(
                      'flutter',
                    ),
                    accountEmail: Text(
                      'flutter@gmail.com',
                    ),
                  ),
                  ListTile(
                    title: Text('Title1'),
                  ),
                  ListTile(
                    title: Text('Title1'),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
