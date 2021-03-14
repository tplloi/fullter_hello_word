import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/base/const/Constants.dart';
import 'package:hello_word/base/demo/todo/controller/ControllerNote.dart';
import 'package:hello_word/base/demo/todo/model/Note.dart';
import 'package:hello_word/base/util/TimeUtils.dart';

class AddNoteScreen extends GetWidget {
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
        child: _buildInput(),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          _addNote();
        },
      ),
    );
  }

  Widget _buildInput() {
    return ListView(
      physics: BouncingScrollPhysics(),
      children: [
        Text(
          "Time: " +
              TimeUtils.convertFromMillisecondsSinceEpoch(
                  DateTime.now().millisecondsSinceEpoch, "dd/MM/yyyy HH:MM:ss"),
          style: TextStyle(color: Colors.black, fontSize: Constants.text_medium),
        ),
        SizedBox(height: Constants.button_height),
        Text(
          "Title",
          style: TextStyle(color: Colors.grey, fontSize: Constants.text_medium),
        ),
        TextField(
          textInputAction: TextInputAction.next,
          keyboardType: TextInputType.multiline,
          minLines: 1,
          //Normal textInputField will be displayed
          maxLines: 5,
          // wh
          maxLength: 200,
          // en user pre
          style: TextStyle(
            fontSize: Constants.text_medium,
            color: Colors.black,
          ),
          decoration: InputDecoration(
            hintStyle: TextStyle(
              fontSize: Constants.text_medium,
              color: Colors.grey,
            ),
            hintText: "Type title",
            suffixIcon: Icon(Icons.create),
          ), // / ill adapt to it
        ),
        SizedBox(height: Constants.button_height),
        Text(
          "Content",
          style: TextStyle(color: Colors.grey, fontSize: Constants.text_medium),
        ),
        TextField(
          textInputAction: TextInputAction.done,
          keyboardType: TextInputType.multiline,
          minLines: 5,
          //Normal textInputField will be displayed
          maxLines: null,
          // wh
          decoration: InputDecoration(
            hintStyle: TextStyle(
              fontSize: Constants.text_medium,
              color: Colors.grey,
            ),
            hintText: "Type content",
          ), //
        ),
      ],
    );
  }

  void _addNote() {
    // Note note = Note(
    //   "title",
    //   "content",
    //   DateTime.now().millisecondsSinceEpoch,
    //   false,
    // );
    // _controllerNote.addNote(note);
  }
}
