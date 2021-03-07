import 'dart:async';
import 'dart:io';

import 'package:crypto/crypto.dart';
import 'package:flutter/material.dart';
import 'package:hello_word/base/util/UIUtils.dart';

class CryptoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> listString = [];
    listString.add("sha256");
    listString.add("ThisIsInputFileName");
    _test(listString);

    return Scaffold(
      appBar: UIUtils().getAppBar(
        "CryptoScreen",
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

  final _usage = 'Usage: dart hash.dart <md5|sha1|sha256> <input_filename>';

  Future _test(List<String> list) async {
    print("_test ${list.length}");
    if (list.length != 2) {
      print(_usage);
      print("Error length != 2");
      // exitCode = 64; // Command was used incorrectly.
      return;
    }

    Hash hash;

    switch (list[0]) {
      case 'md5':
        hash = md5;
        break;
      case 'sha1':
        hash = sha1;
        break;
      case 'sha256':
        hash = sha256;
        break;
      default:
        print(_usage);
        print("Error hash init failed");
        // exitCode = 64; // Command was used incorrectly.
        return;
    }

    var filename = list[1];
    print("file name $filename");
    var input = File(filename);

    if (!input.existsSync()) {
      print("File $filename does not exist.");
      // exitCode = 66; // An input file did not exist or was not readable.
      return;
    }

    var value = await hash.bind(input.openRead()).first;
    print(">>>value $value");
  }
}
