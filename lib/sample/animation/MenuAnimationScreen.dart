import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/util/UIUtils.dart';

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
import 'PositionedTransitionScreen.dart';
import 'RotationTransitionScreen.dart';
import 'hero/HeroAnimationDemoScreen.dart';
import 'routeTransition/RouteTransitionScreen.dart';

class MenuAnimationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
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
            UIUtils.getButton(
              "HeroAnimationDemoScreen",
              () => {
                Get.to(HeroAnimationDemoScreen()),
              },
            ),
            UIUtils.getButton(
              "RouteTransitionScreen",
              () => {
                Get.to(RouteTransitionScreen()),
              },
            ),
            UIUtils.getButton(
              "AnimatedAlignScreen",
              () => {
                Get.to(AnimatedAlignScreen()),
              },
            ),
            UIUtils.getButton(
              "AnimatedBuilder",
              () => {
                Get.to(AnimatedBuilderScreen()),
              },
            ),
            UIUtils.getButton(
              "AnimatedContainerScreen",
              () => {
                Get.to(AnimatedContainerScreen()),
              },
            ),
            UIUtils.getButton(
              "AnimatedCrossFadeScreen",
              () => {
                Get.to(AnimatedCrossFadeScreen()),
              },
            ),
            UIUtils.getButton(
              "AnimatedDefaultTextStyleScreen",
              () => {
                Get.to(AnimatedDefaultTextStyleScreen()),
              },
            ),
            UIUtils.getButton(
              "AnimatedIconScreen",
              () => {
                Get.to(AnimatedIconScreen()),
              },
            ),
            UIUtils.getButton(
              "AnimatedListScreen",
              () => {
                Get.to(AnimatedListScreen()),
              },
            ),
            UIUtils.getButton(
              "AnimatedModalBarrierScreen",
              () => {
                Get.to(AnimatedModalBarrierScreen()),
              },
            ),
            UIUtils.getButton(
              "AnimatedOpacityScreen",
              () => {
                Get.to(AnimatedOpacityScreen()),
              },
            ),
            UIUtils.getButton(
              "AnimatedPaddingScreen",
              () => {
                Get.to(AnimatedPaddingScreen()),
              },
            ),
            UIUtils.getButton(
              "AnimatedPhysicalModelScreen",
              () => {
                Get.to(AnimatedPhysicalModelScreen()),
              },
            ),
            UIUtils.getButton(
              "AnimatedPositionedScreen",
              () => {
                Get.to(AnimatedPositionedScreen()),
              },
            ),
            UIUtils.getButton(
              "AnimatedSizeScreen",
              () => {
                Get.to(AnimatedSizeScreen()),
              },
            ),
            UIUtils.getButton(
              "AnimatedSwitcherScreen",
              () => {
                Get.to(AnimatedSwitcherScreen()),
              },
            ),
            UIUtils.getButton(
              "AnimatedThemeScreen",
              () => {
                Get.to(AnimatedThemeScreen()),
              },
            ),
            UIUtils.getButton(
              "DecoratedBoxTransitionScreen",
              () => {
                Get.to(DecoratedBoxTransitionScreen()),
              },
            ),
            UIUtils.getButton(
              "FadeInImageScreen",
              () => {
                Get.to(FadeInImageScreen()),
              },
            ),
            UIUtils.getButton(
              "FadeTransitionScreen",
              () => {
                Get.to(FadeTransitionScreen()),
              },
            ),
            UIUtils.getButton(
              "PositionedTransitionScreen",
              () => {
                Get.to(PositionedTransitionScreen()),
              },
            ),
            UIUtils.getButton(
              "RotationTransitionScreen",
              () => {
                Get.to(RotationTransitionScreen()),
              },
            ),
          ],
        ),
      ),
    );
  }
}
