
import 'package:flutter/material.dart';
import 'package:focus_detector/focus_detector.dart';
import 'package:get/get.dart';
import 'package:hello_word/base/util/UIUtils.dart';

class FocusDetectorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils().getAppBar(
        "FocusDetectorScreen",
        () => {
          Get.back(),
        },
        null,
      ),
      body: Center(
        child: _buildFocusWidget(context),
      ),
    );
  }

  Widget _buildFocusWidget(BuildContext context) {
    return FocusDetector(
      onFocusLost: () {
        print(
          '---------------------Focus Lost.'
          '\nTriggered when either [onVisibilityLost] or [onForegroundLost] '
          'is called.'
          '\nEquivalent to onPause() on Android or viewDidDisappear() on iOS.',
        );
      },
      onFocusGained: () {
        print(
          '---------------------Focus Gained.'
          '\nTriggered when either [onVisibilityGained] or [onForegroundGained] '
          'is called.'
          '\nEquivalent to onResume() on Android or viewDidAppear() on iOS.',
        );
      },
      onVisibilityLost: () {
        print(
          '---------------------Visibility Lost.'
          '\nIt means the widget is no longer visible within your app.',
        );
      },
      onVisibilityGained: () {
        print(
          '---------------------Visibility Gained.'
          '\nIt means the widget is now visible within your app.',
        );
      },
      onForegroundLost: () {
        print(
          '---------------------Foreground Lost.'
          '\nIt means, for example, that the user sent your app to the background by opening '
          'another app or turned off the device\'s screen while your '
          'widget was visible.',
        );
      },
      onForegroundGained: () {
        print(
          '---------------------Foreground Gained.'
          '\nIt means, for example, that the user switched back to your app or turned the '
          'device\'s screen back on while your widget was visible.',
        );
      },
      child: UIUtils().getButton(
        "Go to other screen",
        () => {
          Get.to(OtherPage()),
        },
      ),
    );
  }
}

class OtherPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: UIUtils().getAppBar(
            "OtherPage",
            () => {
                  Get.back(),
                },
            () => null),
        body: Center(
          child: UIUtils()
              .getText("Look at the console and return to the first screen."),
        ),
      );
}
