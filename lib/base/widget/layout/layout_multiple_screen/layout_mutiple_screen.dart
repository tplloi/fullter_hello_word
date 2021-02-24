import 'package:flutter/material.dart';
import 'package:hello_word/base/util/ui_utils.dart';
import 'package:hello_word/base/widget/layout/layout_multiple_screen/product_box.dart';

class LayoutMultipleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils().getAppBar(
        "LayoutMultipleScreen",
        () => Navigator.pop(context),
      ),
      body: Center(
        child: MyHomePage(
          title: "MyHomePage",
        ),
      ),
      backgroundColor: Colors.white70,
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
        children: <Widget>[
          ProductBox(
            name: "Suzuki",
            description: "Japan",
            price: 1000,
            image: "iv.jpg",
            color: Colors.red,
          ),
          ProductBox(
            name: "Ducati",
            description: "Italia",
            price: 2000,
            image: "iv.png",
            color: Colors.green,
          ),
          ProductBox(
            name: "Honda",
            description: "Japan",
            price: 3000,
            image: "iv.jpg",
            color: Colors.blueAccent,
          ),
          ProductBox(
            name: "BMW",
            description: "Germany",
            price: 4000,
            image: "iv.png",
          ),
          ProductBox(
            name: "Ferrari",
            description: "Italia",
            price: 5000,
            image: "iv.png",
          )
        ],
      ),
    );
  }
}
