import 'package:flutter/material.dart';
import 'package:hello_word/base/util/UIUtils.dart';

class TabPageSelectorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List tabs = ['Tab1', 'Tab2', 'Tab3', 'Tab4'];

    return Column(
      children: <Widget>[
        Expanded(
          child: Scaffold(
            appBar: UIUtils().getAppBar(
              "TabPageSelectorScreen",
              () => Navigator.pop(context),
            ),
            body: DefaultTabController(
              length: tabs.length,
              child: Builder(builder: (context) {
                return Column(
                  children: <Widget>[
                    TabPageSelector(),
                    Expanded(
                      child: TabBarView(
                          children: tabs.map((value) {
                        return UIUtils().getRaisedButton(
                          "TabBarView " + value,
                          () => Navigator.pop(context),
                        );
                      }).toList()),
                    ),
                  ],
                );
              }),
            ),
          ),
        ),
      ],
    );
  }
}
