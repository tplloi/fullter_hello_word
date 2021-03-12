import 'package:get/get.dart';

class Controller extends GetxController {
  var count = 0.obs;
  var text = "".obs;

  void increment() {
    count++;
  }

  void minus() {
    count--;
  }

  void updateText(String s) {
    text.value = s;
  }

  void setCount(int count) {
    this.count.value = count;
  }
}
