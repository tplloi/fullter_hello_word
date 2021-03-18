import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
import 'hero/HeroAnimationDemoScreen.dart';
import 'routeTransition/RouteTransitionScreen.dart';

class MenuAnimationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils().getAppBar(
        "Animation menu",
        () => {
          Get.back(),
        },
        null,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            UIUtils().getButton(
              "HeroAnimationDemoScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => HeroAnimationDemoScreen()),
                )
              },
            ),
            UIUtils().getButton(
              "RouteTransitionScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => RouteTransitionScreen()),
                )
              },
            ),
            UIUtils().getButton(
              "AnimatedAlignScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => AnimatedAlignScreen()),
                )
              },
            ),
            UIUtils().getButton(
              "AnimatedBuilder",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => AnimatedBuilderScreen()),
                )
              },
            ),
            UIUtils().getButton(
              "AnimatedContainerScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => AnimatedContainerScreen()),
                )
              },
            ),
            UIUtils().getButton(
              "AnimatedCrossFadeScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => AnimatedCrossFadeScreen()),
                )
              },
            ),
            UIUtils().getButton(
              "AnimatedDefaultTextStyleScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => AnimatedDefaultTextStyleScreen()),
                )
              },
            ),
            UIUtils().getButton(
              "AnimatedIconScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AnimatedIconScreen()),
                )
              },
            ),
            UIUtils().getButton(
              "AnimatedListScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AnimatedListScreen()),
                )
              },
            ),
            UIUtils().getButton(
              "AnimatedModalBarrierScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => AnimatedModalBarrierScreen()),
                )
              },
            ),
            UIUtils().getButton(
              "AnimatedOpacityScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => AnimatedOpacityScreen()),
                )
              },
            ),
            UIUtils().getButton(
              "AnimatedPaddingScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => AnimatedPaddingScreen()),
                )
              },
            ),
            UIUtils().getButton(
              "AnimatedPhysicalModelScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => AnimatedPhysicalModelScreen()),
                )
              },
            ),
            UIUtils().getButton(
              "AnimatedPositionedScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => AnimatedPositionedScreen()),
                )
              },
            ),
            UIUtils().getButton(
              "AnimatedSizeScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AnimatedSizeScreen()),
                )
              },
            ),
            UIUtils().getButton(
              "AnimatedSwitcherScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => AnimatedSwitcherScreen()),
                )
              },
            ),
            UIUtils().getButton(
              "AnimatedThemeScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => AnimatedThemeScreen()),
                )
              },
            ),
            UIUtils().getButton(
              "DecoratedBoxTransitionScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DecoratedBoxTransitionScreen()),
                )
              },
            ),
            UIUtils().getButton(
              "FadeInImageScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FadeInImageScreen()),
                )
              },
            ),
            UIUtils().getButton(
              "FadeTransitionScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => FadeTransitionScreen()),
                )
              },
            ),
            UIUtils().getButton(
              "PositionedTransitionScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PositionedTransitionScreen()),
                )
              },
            ),
            UIUtils().getButton(
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
