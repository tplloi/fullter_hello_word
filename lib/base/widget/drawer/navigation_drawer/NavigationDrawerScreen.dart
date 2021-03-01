import 'package:flutter/material.dart';
import 'package:hello_word/base/widget/drawer/navigation_drawer/AccountScreen.dart';
import 'package:hello_word/base/widget/drawer/navigation_drawer/HomeScreen.dart';
import 'package:hello_word/base/widget/drawer/navigation_drawer/SettingsScreen.dart';

class NavigationDrawerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(), // route for home is '/' implicitly
      routes: <String, WidgetBuilder>{
        // define the routes
        SettingsScreen.routeName: (BuildContext context) => SettingsScreen(),
        AccountScreen.routeName: (BuildContext context) => AccountScreen(),
      },
    );
  }
}
