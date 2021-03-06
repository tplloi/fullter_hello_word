import 'package:flutter/material.dart';
import 'package:hello_word/base/model/People.dart';
import 'package:hello_word/base/util/UIUtils.dart';

class CryptoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils().getAppBar(
        "CryptoScreen",
        () => {
          Navigator.pop(context),
        },
        () => {
          //TODO cypto
        },
      ),
      body: Center(
        child: null,
      ),
    );
  }
}
