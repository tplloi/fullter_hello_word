import 'package:get/get.dart';
import 'package:hello_word/base/core/BaseController.dart';
import 'package:hello_word/base/demo/todo/model/Note.dart';

class ControllerNote extends BaseController {
  var listNote = <Note>[].obs;
  var listNoteComplete = <Note>[].obs;
  var listNoteIncomplete = <Note>[].obs;

  @override
  void onInit() {
    super.onInit();
  }

  void clearAllValue() {
    Get.delete<ControllerNote>();
  }

  void addNote(Note note) {
    listNote.insert(0, note);

    _updateData();
  }

  void setNoteComplete(int index) {
    listNote[index].isComplete = !listNote[index].isComplete;
    listNote.refresh();

    _updateData();
  }

  void _updateData() {
    var listTmpComplete = <Note>[];
    var listTmpIncomplete = <Note>[];
    listNote.forEach((element) {
      if (element.isComplete) {
        listTmpComplete.add(element);
      } else {
        listTmpIncomplete.add(element);
      }
    });
    listNoteComplete.clear();
    listNoteComplete.addAll(listTmpComplete);
    listNoteIncomplete.clear();
    listNoteIncomplete.addAll(listTmpIncomplete);
  }
}
