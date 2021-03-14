import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/base/const/Constants.dart';
import 'package:hello_word/base/demo/todo/controller/ControllerNote.dart';
import 'package:hello_word/base/demo/todo/model/Note.dart';

class AddNoteScreen extends GetWidget {
  final ControllerNote _controllerNote = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        brightness: Brightness.dark,
        centerTitle: false,
        title: Text(
          "Create your task",
          style: TextStyle(
            color: Colors.white,
            fontSize: Constants.text_medium,
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
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
      int length = _controllerNote.listNote.length;
      if (length == 0) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/ic_cancel.png",
              width: 70,
              height: 70,
            ),
            SizedBox(height: Constants.margin_padding_medium),
            Text(
              "No Data.\nPlease click Add button below to add some task.",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey,
                fontSize: Constants.text_medium,
              ),
            ),
          ],
        );
      } else {
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
      }
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
