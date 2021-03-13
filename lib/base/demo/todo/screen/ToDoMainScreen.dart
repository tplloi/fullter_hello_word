import 'package:flutter/material.dart';

import 'Tab1.dart';
import 'Tab2.dart';
import 'Tab3.dart';

class ToDoMainScreen extends StatefulWidget {
  @override
  ToDoMainScreenState createState() => ToDoMainScreenState();
}

// SingleTickerProviderStateMixin is used for animation
class ToDoMainScreenState extends State<ToDoMainScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        children: <Widget>[
          Tab1(),
          Tab2(),
          Tab3(),
        ],
        controller: _tabController,
      ),
      bottomNavigationBar: Material(
        color: Colors.blue,
        child: TabBar(
          tabs: <Tab>[
            Tab(
              icon: Icon(Icons.event_note),
              text: "All",
            ),
            Tab(
              icon: Icon(Icons.event_available),
              text: "Complete",
            ),
            Tab(
              icon: Icon(Icons.event_busy),
              text: "Incomplete",
            ),
          ],
          // setup the controller
          controller: _tabController,
        ),
      ),
    );
  }
}
