import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hello_word/base/util/UIUtils.dart';

import 'sharedPreferences/SharedPreferencesScreen.dart';
import 'sqlite/SQLiteDemoScreen.dart';

class MenuDatabaseScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils().getAppBar(
        "MenuDatabaseScreen",
        () => {
          SystemNavigator.pop(),
        },
        null,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            UIUtils().getButton(
              "SharedPreferencesScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SharedPreferencesScreen()),
                )
              },
            ),
            UIUtils().getButton(
              "SQLiteDemoScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SQLiteDemoScreen()),
                )
              },
            ),
          ],
        ),
      ),
    );
  }
}
