import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text("PopupMenuButtonWidget"),
      ),
      body: Center(
        child: PopupMenuButtonWidget(),
      ),
    ),
    // Set the theme's primary color, accent color,
    theme: ThemeData(
      primarySwatch: Colors.green,
      accentColor: Colors.lightGreenAccent,
      // Set background color
      backgroundColor: Colors.black12,
    ),
  ));
}

class PopupMenuButtonWidget extends StatefulWidget {
  @override
  _PopupMenuButtonWidgetState createState() => _PopupMenuButtonWidgetState();
}

enum Selections { java, c, swift, dart }

class _PopupMenuButtonWidgetState extends State<PopupMenuButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<Selections>(
      icon: Icon(Icons.input),
      onSelected: (Selections result) {},
      itemBuilder: (BuildContext context) => <PopupMenuEntry<Selections>>[
        const PopupMenuItem<Selections>(
          value: Selections.java,
          child: Text('Choose java'),
        ),
        const PopupMenuItem<Selections>(
          value: Selections.c,
          child: Text('Choose c'),
        ),
        const PopupMenuItem<Selections>(
          value: Selections.swift,
          child: Text('Choose swift'),
        ),
        const PopupMenuDivider(),
        const PopupMenuItem<Selections>(
          value: Selections.dart,
          child: Text('Choose dart'),
        ),
      ],
    );
  }
}
