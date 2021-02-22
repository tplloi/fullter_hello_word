import 'package:flutter/material.dart';

class DrawerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Scaffold(
            appBar: AppBar(
              title: Text('DrawerScreen'),
            ),
            body: Center(
              child: Text('DrawerScreen'),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                Navigator.pop(context)
                ,
              },
              child: Icon(Icons.backpack),
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
                      'freuss47@gmail.com',
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
