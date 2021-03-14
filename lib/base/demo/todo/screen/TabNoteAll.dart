import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/base/const/Constants.dart';
import 'package:hello_word/base/demo/todo/controller/ControllerNote.dart';

class Tab1 extends GetWidget {
  final ControllerNote _controllerNote = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        brightness: Brightness.dark,
        centerTitle: false,
        title: Text(
          "All",
          style: TextStyle(color: Colors.white, fontSize: 45),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(Constants.margin_padding_large),
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
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}
