import 'package:flutter/material.dart';
import 'package:hello_word/base/animation/PositionedTransitionScreen.dart';
import 'package:hello_word/base/animation/RotationTransitionScreen.dart';
import 'package:hello_word/base/util/UIUtils.dart';

import 'AnimatedAlignScreen.dart';
import 'AnimatedBuilderScreen.dart';
import 'AnimatedContainerScreen.dart';
import 'AnimatedCrossFadeScreen.dart';
import 'AnimatedDefaultTextStyleScreen.dart';
import 'AnimatedIconScreen.dart';
import 'AnimatedListScreen.dart';
import 'AnimatedModalBarrierScreen.dart';
import 'AnimatedOpacityScreen.dart';
import 'AnimatedPaddingScreen.dart';
import 'AnimatedPhysicalModelScreen.dart';
import 'AnimatedPositionedScreen.dart';
import 'AnimatedSizeScreen.dart';
import 'AnimatedSwitcherScreen.dart';
import 'AnimatedThemeScreen.dart';
import 'DecoratedBoxTransitionScreen.dart';
import 'FadeInImageScreen.dart';
import 'FadeTransitionScreen.dart';

class MenuAnimationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils().getAppBar(
          "Animation menu",
          () => {
                Navigator.pop(context),
              }),
      body: SingleChildScrollView(
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
            UIUtils().getRaisedButton(
              "AnimatedDefaultTextStyleScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => AnimatedDefaultTextStyleScreen()),
                )
              },
            ),
            UIUtils().getRaisedButton(
              "AnimatedIconScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AnimatedIconScreen()),
                )
              },
            ),
            UIUtils().getRaisedButton(
              "AnimatedListScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AnimatedListScreen()),
                )
              },
            ),
            UIUtils().getRaisedButton(
              "AnimatedModalBarrierScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => AnimatedModalBarrierScreen()),
                )
              },
            ),
            UIUtils().getRaisedButton(
              "AnimatedOpacityScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => AnimatedOpacityScreen()),
                )
              },
            ),
            UIUtils().getRaisedButton(
              "AnimatedPaddingScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => AnimatedPaddingScreen()),
                )
              },
            ),
            UIUtils().getRaisedButton(
              "AnimatedPhysicalModelScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => AnimatedPhysicalModelScreen()),
                )
              },
            ),
            UIUtils().getRaisedButton(
              "AnimatedPositionedScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => AnimatedPositionedScreen()),
                )
              },
            ),
            UIUtils().getRaisedButton(
              "AnimatedSizeScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AnimatedSizeScreen()),
                )
              },
            ),
            UIUtils().getRaisedButton(
              "AnimatedSwitcherScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => AnimatedSwitcherScreen()),
                )
              },
            ),
            UIUtils().getRaisedButton(
              "AnimatedThemeScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => AnimatedThemeScreen()),
                )
              },
            ),
            UIUtils().getRaisedButton(
              "DecoratedBoxTransitionScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DecoratedBoxTransitionScreen()),
                )
              },
            ),
            UIUtils().getRaisedButton(
              "FadeInImageScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FadeInImageScreen()),
                )
              },
            ),
            UIUtils().getRaisedButton(
              "FadeTransitionScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => FadeTransitionScreen()),
                )
              },
            ),
            UIUtils().getRaisedButton(
              "PositionedTransitionScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PositionedTransitionScreen()),
                )
              },
            ),
            UIUtils().getRaisedButton(
              "RotationTransitionScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => RotationTransitionScreen()),
                )
              },
            ),
          ],
        ),
      ),
    );
  }
}
