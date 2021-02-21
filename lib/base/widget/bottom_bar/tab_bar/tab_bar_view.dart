import 'package:flutter/material.dart';
import 'package:hello_word/base/util/ui_utils.dart';

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
          FirstTab(),
          SecondTab(),
          ThirdTab(),
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

class FirstTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Container(
        child: Center(
          child: Column(
            // center the children
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.favorite,
                size: 160.0,
                color: Colors.white,
              ),
              Text(
                "First Tab",
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class SecondTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Container(
        child: Center(
          child: Column(
            // center the children
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.adb,
                size: 160.0,
                color: Colors.white,
              ),
              Text(
                "Second Tab",
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ThirdTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: Container(
        child: Center(
          child: Column(
            // center the children
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.airport_shuttle,
                size: 160.0,
                color: Colors.white,
              ),
              Text(
                "Third Tab",
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}
