import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/base/const/Constants.dart';
import 'package:hello_word/base/demo/todo/controller/ControllerNote.dart';
import 'package:hello_word/base/demo/todo/model/Note.dart';
import 'package:hello_word/base/util/TimeUtils.dart';

class TabNoteComplete extends GetWidget {
  final ControllerNote _controllerNote = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        brightness: Brightness.dark,
        centerTitle: false,
        title: Text(
          "Complete",
          style: TextStyle(
            color: Colors.white,
            fontSize: Constants.txtMedium,
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(Constants.marginPaddingLarge),
        child: _buildList(),
      ),
    );
  }

  Widget _buildList() {
    return Obx(() {
      int length = _controllerNote.listNoteComplete.length;
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
            SizedBox(height: Constants.marginPaddingMedium),
            Text(
              "You have no task completed",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey,
                fontSize: Constants.txtMedium,
              ),
            ),
          ],
        );
      } else {
        return ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: _controllerNote.listNoteComplete.length,
          itemBuilder: (context, index) {
            return _buildRow(_controllerNote.listNoteComplete[index], index);
          },
        );
      }
    });
  }

  Widget _buildRow(Note note, int index) {
    return Container(
      padding: EdgeInsets.fromLTRB(
        0,
        Constants.marginPaddingMedium,
        0,
        Constants.marginPaddingMedium,
      ),
      child: Container(
        padding: EdgeInsets.all(Constants.marginPaddingMedium),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withAlpha(15),
              blurRadius: 0.5, // soften the shadow
              spreadRadius: 0.5, //extend the shadow
              offset: Offset(
                1.5, // Move to right 10  horizontally
                1.5, // Move to bottom 10 Vertically
              ),
            )
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  TimeUtils.convertFromMillisecondsSinceEpoch(
                      note.millisecondsSinceEpoch, TimeUtils.FORMAT_1),
                  style: TextStyle(
                    fontSize: Constants.txtSmall,
                    color: Colors.blue,
                  ),
                ),
                Spacer(),
                Checkbox(
                  activeColor: Colors.blue,
                  tristate: false,
                  value: note.isComplete,
                  onChanged: (value) {
                    _controllerNote.setNoteComplete(note);
                  },
                ),
              ],
            ),
            _buildHorizontalDivider(),
            SizedBox(height: Constants.marginPaddingMedium),
            Text(
              note.title,
              style: TextStyle(
                fontSize: Constants.txtLarge,
                color: Colors.black,
              ),
            ),
            SizedBox(height: Constants.marginPaddingMedium),
            Text(
              note.content,
              style: TextStyle(
                fontSize: Constants.txtMedium,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHorizontalDivider() {
    return Container(
      margin: EdgeInsets.all(0.0),
      height: 1,
      width: double.maxFinite,
      color: Color(0xffECECEC),
    );
  }
}
