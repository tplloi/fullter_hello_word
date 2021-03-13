import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hello_word/base/const/Constants.dart';

class Tab1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.all(Constants.margin_padding_large),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "All",
              style: TextStyle(
                color: Colors.black,
                fontSize: 65,
              ),
            ),
            Expanded(
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: 150,
                itemBuilder: (context, index) {
                  return Text(
                    "AAAAAA$index",
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          //TODO
        },
      ),
    );
  }
}
