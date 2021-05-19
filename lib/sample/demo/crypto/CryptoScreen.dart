import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/util/UIUtils.dart';

class CryptoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    _test();
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "CryptoScreen",
        () => {
          Get.back(),
        },
        null,
      ),
      body: Center(
        child: UIUtils.getText("Check logcat"),
      ),
    );
  }

  void _test() {
    var bytes1 = utf8.encode("TranPhuLoi@69"); // data being hashed
    var digest1 = sha256.convert(bytes1); // Hashing Process
    print("Digest as bytes: ${digest1.bytes}"); // Print Bytes
    print("Digest as hex string: $digest1"); // Print After Hashing
  }
}
