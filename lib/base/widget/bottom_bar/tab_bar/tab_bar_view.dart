import 'package:flutter/material.dart';
import 'package:hello_word/base/util/UIUtils.dart';
import 'package:hello_word/base/widget/bottom_bar/tab_bar/tab_1.dart';
import 'package:hello_word/base/widget/bottom_bar/tab_bar/tab_2.dart';
import 'package:hello_word/base/widget/bottom_bar/tab_bar/tab_3.dart';

class TabBarScreen extends StatefulWidget {
  @override
  TabBarScreenState createState() => TabBarScreenState();
}

// SingleTickerProviderStateMixin is used for animation
class TabBarScreenState extends State<TabBarScreen>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    super.initState();

    tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Appbar
      appBar: UIUtils().getAppBar(
        "TabBarScreen",
        () => Navigator.pop(context),
      ),
      // Set the TabBar view as the body of the Scaffold
      body: TabBarView(
        // Add tabs as widgets
        children: <Widget>[
          Tab1(),
          Tab2(),
          Tab3(),
        ],
        // set the controller
        controller: tabController,
      ),
      // Set the bottom navigation bar
      bottomNavigationBar: Material(
        color: Colors.blue,
        child: TabBar(
          tabs: <Tab>[
            Tab(
              icon: Icon(Icons.favorite),
              text: "Favorite",
            ),
            Tab(
              icon: Icon(Icons.adb),
              text: "adb",
            ),
            Tab(
              icon: Icon(Icons.airport_shuttle),
              text: "Shuttle",
            ),
          ],
          // setup the controller
          controller: tabController,
        ),
      ),
    );
  }
}
