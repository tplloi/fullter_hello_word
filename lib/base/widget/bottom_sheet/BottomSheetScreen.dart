import 'package:flutter/material.dart';
import 'package:hello_word/base/util/UIUtils.dart';

import 'BottomSheetHomePage.dart';

class BottomSheetScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BottomSheetHomePage(title: 'BottomSheetScreen'),
    );
  }
}
