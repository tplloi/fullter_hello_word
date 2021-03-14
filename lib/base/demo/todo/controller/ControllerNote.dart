import 'package:get/get.dart';
import 'package:hello_word/base/core/BaseController.dart';
import 'package:hello_word/base/demo/todo/model/Note.dart';

class ControllerNote extends BaseController {
  var listNote = <Note>[].obs;

  void clearAllValue() {
    Get.delete<ControllerNote>();
  }

  void addNote(Note note){
    listNote.add(note);
  }
}
