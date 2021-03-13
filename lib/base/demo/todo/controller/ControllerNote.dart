
import 'package:get/get.dart';
import 'package:hello_word/base/core/BaseController.dart';

class ControllerNote extends BaseController {
  var isValidOTPNumber = false.obs;

  void clearAllValue() {
    Get.delete<ControllerNote>();
  }

  void setIsValidOTPNumber(bool isValidOTPNumber) {
    this.isValidOTPNumber.value = isValidOTPNumber;
  }
}
