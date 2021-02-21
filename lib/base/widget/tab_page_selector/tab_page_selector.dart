import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: TabPageSelectorWidget(),
    // Set the theme's primary color, accent color,
    theme: ThemeData(
      primarySwatch: Colors.green,
      accentColor: Colors.lightGreenAccent,
      // Set background color
      backgroundColor: Colors.black12,
    ),
  ));
}

class TabPageSelectorWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List tabs = ['Tab1', 'Tab2', 'Tab3', 'Tab4'];

    return Column(
      children: <Widget>[
        Expanded(
          child: Scaffold(
            appBar: AppBar(
              title: Text('TabPageSelectorWidget'),
            ),
            body: DefaultTabController(
              length: tabs.length,
              child: Builder(builder: (context) {
                return Column(
                  children: <Widget>[
                    TabPageSelector(),
                    Expanded(
                      child: TabBarView(
                          children: tabs.map((value) {
                        return Text(value);
                      }).toList()),
                    ),
                  ],
                );
              }),
            ),
          ),
        ),
      ],
    );
  }
}
