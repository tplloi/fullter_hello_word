import 'package:flutter/material.dart';
import 'package:hello_word/base/util/ui_utils.dart';

import 'range/range_slider_screen.dart';
import 'slider/slider_screen.dart';

class MenuSliderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils().getAppBar(
          "MenuSliderScreen",
          () => {
                Navigator.pop(context),
              }),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            UIUtils().getRaisedButton(
              "RangeSliderScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RangeSliderScreen()),
                )
              },
            ),
            UIUtils().getRaisedButton(
              "SliderScreen",
                  () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SliderScreen()),
                )
              },
            ),
          ],
        ),
      ),
    );
  }
}