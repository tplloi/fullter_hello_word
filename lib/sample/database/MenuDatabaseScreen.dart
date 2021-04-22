import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/common/const/DimenConstants.dart';
import 'package:hello_word/lib/util/UIUtils.dart';

import 'sharedPreferences/SharedPreferencesScreen.dart';
import 'sqlite/SQLiteDemoScreen.dart';

class MenuDatabaseScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "MenuDatabaseScreen",
        () => {
          Get.back(),
        },
        null,
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.all(DimenConstants.marginPaddingMedium),
        children: [
          UIUtils.getButton(
            "SharedPreferencesScreen",
            () => {
              Get.to(SharedPreferencesScreen()),
            },
          ),
          UIUtils.getButton(
            "SQLiteDemoScreen",
            () => {
              Get.to(SQLiteDemoScreen()),
            },
          ),
        ],
      ),
    );
  }
}
