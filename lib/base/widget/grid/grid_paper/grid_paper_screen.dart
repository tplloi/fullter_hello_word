import 'package:flutter/material.dart';
import 'package:hello_word/base/util/ui_utils.dart';

class GridPaperScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils().getAppBar(
        "GridPaperScreen",
        () => Navigator.pop(context),
      ),
      body: GridPaperWidget(),
    );
  }
}

class GridPaperWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Container(
            width: double.infinity,
            color: Colors.blue,
            child: GridPaper(
              child: Text(
                "Text1",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
