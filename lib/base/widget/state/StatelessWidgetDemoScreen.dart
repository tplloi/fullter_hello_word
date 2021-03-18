import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/base/util/UIUtils.dart';

class StatelessWidgetDemoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double myTextSize = 30.0;
    final double myIconSize = 40.0;
    final TextStyle myTextStyle =
        TextStyle(color: Colors.grey, fontSize: myTextSize);

    var column = Column(
      // Makes the cards stretch in horizontal axis
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        // Setup the card
        MyCard(
            // Setup the text
            title: Text(
              "Favorite",
              style: myTextStyle,
            ),
            // Setup the icon
            icon: Icon(Icons.favorite, size: myIconSize, color: Colors.red)),
        MyCard(
            title: Text(
              "Alarm",
              style: myTextStyle,
            ),
            icon: Icon(Icons.alarm, size: myIconSize, color: Colors.blue)),
        MyCard(
            title: Text(
              "Airport Shuttle",
              style: myTextStyle,
            ),
            icon: Icon(Icons.airport_shuttle,
                size: myIconSize, color: Colors.amber)),
        MyCard(
            title: Text(
              "Done",
              style: myTextStyle,
            ),
            icon: Icon(Icons.done, size: myIconSize, color: Colors.green)),
      ],
    );

    return Scaffold(
      appBar: UIUtils().getAppBar(
        "StatelessWidgetDemoScreen",
        () => Get.back(),
        null,
      ),
      body: Container(
        // Sets the padding in the main container
        padding: const EdgeInsets.only(bottom: 2.0),
        child: Center(
          child: SingleChildScrollView(child: column),
        ),
      ),
    );
  }
}

// Create a reusable stateless base.widget
class MyCard extends StatelessWidget {
  final Widget icon;
  final Widget title;

  // Constructor. {} here denote that they are optional values i.e you can use as: MyCard()
  MyCard({
    this.title,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 1.0),
      child: Card(
        child: Container(
          padding: const EdgeInsets.all(15.0),
          child: InkWell(
            onTap: () {
              print("onTap");
            },
            child: Column(children: <Widget>[
              this.title,
              this.icon,
            ]),
          ),
        ),
      ),
    );
  }
}
