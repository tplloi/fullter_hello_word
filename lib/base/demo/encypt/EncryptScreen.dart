import 'package:encrypt/encrypt.dart' as Encrypted;
import 'package:flutter/material.dart';
import 'package:hello_word/base/util/UIUtils.dart';

class EncryptScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    _test();
    return Scaffold(
      appBar: UIUtils().getAppBar(
        "EncryptScreen",
        () => {
          Navigator.pop(context),
        },
        null,
      ),
      body: Center(
        child: UIUtils().getText("Check logcat"),
      ),
    );
  }

  void _test() {
    final plainText = "TranPhuLoi@69";

    final key = Encrypted.Key.fromUtf8("my 32 length key................");
    final iv = Encrypted.IV.fromLength(16);

    final encrypter = Encrypted.Encrypter(Encrypted.AES(key));

    final encrypted = encrypter.encrypt(plainText, iv: iv);
    final decrypted = encrypter.decrypt(encrypted, iv: iv);

    print(
        "plainText $plainText"); // Lorem ipsum dolor sit amet, consectetur adipiscing elit
    print(encrypted
        .base64); // R4PxiU3h8YoIRqVowBXm36ZcCeNeZ4s1OvVBTfFlZRdmohQqOpPQqD1YecJeZMAop/hZ4OxqgC1WtwvX/hP9mw==
    print(decrypted); // Lorem ipsum dolor sit amet, consectetur adipiscing elit
  }
}