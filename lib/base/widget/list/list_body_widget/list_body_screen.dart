import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hello_word/base/util/ui_utils.dart';

class ListBodyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils().getAppBar(
        "ListBodyScreen",
        () => Navigator.pop(context),
      ),
      body: ListBodyWidget(),
    );
  }
}

class ListBodyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        ListBody(
          mainAxis: Axis.horizontal,
          reverse: false,
          children: List.generate(
            10,
            (index) {
              return Container(
                color: Color(0xFFFFFFFF & Random().nextInt(0xFFFFFFFF)),
                width: 100,
                height: 100,
                child: Text(
                  'Item in ListBody horizontal || vertical',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
