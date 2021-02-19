import 'package:flutter/material.dart';
import 'package:hello_word/base/util/ui_utils.dart';

import 'animated_align.dart';
import 'animated_builder.dart';
import 'animated_container.dart';
import 'animated_cross_fade.dart';
import 'animated_default_text_style.dart';
import 'animated_icon.dart';
import 'animated_list.dart';
import 'animated_modal_barrier.dart';
import 'animated_opacity.dart';
import 'animated_padding.dart';
import 'animated_physical_model.dart';
import 'animated_positioned.dart';
import 'animated_size.dart';
import 'animated_switcher.dart';
import 'animated_theme.dart';
import 'decorated_box_transition.dart';
import 'fade_in_image.dart';

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
                  MaterialPageRoute(
                      builder: (context) => FadeInImageScreen()),
                )
              },
            ),
          ],
        ),
      ),
    );
  }
}
