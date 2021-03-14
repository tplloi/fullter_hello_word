import 'package:get/get.dart';
import 'package:hello_word/base/core/BaseController.dart';
import 'package:hello_word/base/demo/todo/model/Note.dart';

class ControllerNote extends BaseController {
  var listNote = <Note>[].obs;
  var listNoteComplete = <Note>[].obs;

  @override
  void onInit() {
    super.onInit();
  }

  void clearAllValue() {
    Get.delete<ControllerNote>();
  }

  void addNote(Note note) {
    listNote.insert(0, note);
  }

  void setNoteComplete(int index) {
    listNote[index].isComplete = !listNote[index].isComplete;
    listNote.refresh();

    _updateData();
  }

  void _updateData(){
    var listTmpComplete = <Note>[];
    listNote.forEach((element) {
      if (element.isComplete) {
        listTmpComplete.add(element);
      }
    });
    listNoteComplete.clear();
    listNoteComplete.addAll(listTmpComplete);
  }
}
