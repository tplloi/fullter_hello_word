import 'package:flutter/material.dart';
import 'package:hello_word/base/util/ui_utils.dart';

import 'animated_align.dart';
import 'animated_builder.dart';
import 'animated_container.dart';
import 'animated_cross_fade.dart';

class MenuAnimationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils().getAppBar(
          "Animation menu",
          () => {
                Navigator.pop(context),
              }),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            UIUtils().getRaisedButton(
              "AnimatedAlignScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => AnimatedAlignScreen()),
                )
              },
            ),
            UIUtils().getRaisedButton(
              "AnimatedBuilder",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => AnimatedBuilderScreen()),
                )
              },
            ),
            UIUtils().getRaisedButton(
              "AnimatedContainerScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => AnimatedContainerScreen()),
                )
              },
            ),
            UIUtils().getRaisedButton(
              "AnimatedCrossFadeScreen",
                  () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => AnimatedCrossFadeScreen()),
                )
              },
            ),
          ],
        ),
      ),
    );
  }
}
