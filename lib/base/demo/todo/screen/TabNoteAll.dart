import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/base/const/Constants.dart';
import 'package:hello_word/base/demo/todo/controller/ControllerNote.dart';
import 'package:hello_word/base/demo/todo/model/Note.dart';

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
        child: _buildList(),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          _addNote();
        },
      ),
    );
  }

  Widget _buildList() {
    return Obx(() {
      return ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: _controllerNote.listNote.length,
        itemBuilder: (context, index) {
          return Text(
            "AAAAAAAAA",
            style: TextStyle(
              color: Colors.red,
            ),
          );
        },
      );
    });
  }

  void _addNote() {
    Note note = Note(
      "title",
      "content",
      DateTime.now().millisecondsSinceEpoch,
      false,
    );
    _controllerNote.addNote(note);
  }
}
