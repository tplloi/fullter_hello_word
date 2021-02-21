import 'package:flutter/material.dart';
import 'package:hello_word/base/animation/positioned_transition_screen.dart';
import 'package:hello_word/base/animation/rotation_transition_screen.dart';
import 'package:hello_word/base/util/ui_utils.dart';

import 'animated_align_screen.dart';
import 'animated_builder_screen.dart';
import 'animated_container_screen.dart';
import 'animated_cross_fade_screen.dart';
import 'animated_default_text_style_screen.dart';
import 'animated_icon_screen.dart';
import 'animated_list_screen.dart';
import 'animated_modal_barrier_screen.dart';
import 'animated_opacity_screen.dart';
import 'animated_padding_screen.dart';
import 'animated_physical_model_screen.dart';
import 'animated_positioned_screen.dart';
import 'animated_size_screen.dart';
import 'animated_switcher_screen.dart';
import 'animated_theme_screen.dart';
import 'decorated_box_transition_screen.dart';
import 'fade_in_image_screen.dart';
import 'fade_transition_screen.dart';

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
