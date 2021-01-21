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
        title: Text("ListTileWidget"),
      ),
      body: ListTileWidget(),
    );
  }
}

class ListTileWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          title: Text('title text with dense'),
          dense: true,
        ),
        ListTile(
          title: Text('title'),
          leading: Text('leading'),
        ),
        ListTile(
          title: Text('title'),
          leading: Icon(Icons.access_alarm),
        ),
        ListTile(
          title: Text('title'),
          leading: Text('leading'),
          trailing: Text('trailing'),
        ),
        ListTile(
          title: Text('title'),
          leading: Icon(Icons.access_alarm),
          trailing: Icon(Icons.account_balance),
        ),
        ListTile(
          title: Text('title'),
          leading: Text('leading'),
          trailing: Text('trailing'),
          isThreeLine: true,
          subtitle: Text('subtitle'),
        ),
        ListTile(
          title: Text('title'),
          leading: Icon(Icons.access_alarm),
          trailing: Icon(Icons.account_balance),
          isThreeLine: true,
          subtitle: Text('subtitle'),
        ),
      ],
    );
  }
}
