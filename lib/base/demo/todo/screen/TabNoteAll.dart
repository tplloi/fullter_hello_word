import 'package:flutter/material.dart';
import 'package:hello_word/base/const/Constants.dart';

class Tab1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.all(Constants.margin_padding_large),
            child: Text(
              "All",
              style: TextStyle(
                color: Colors.black,
                fontSize: 65,
              ),
            ),
          ),
          ListView(
            physics: BouncingScrollPhysics(),
            children: [],
          ),
        ],
      ),
    );
  }
}
