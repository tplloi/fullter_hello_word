import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello_word/base/util/UIUtils.dart';

class CupertinoSegmentedControlScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils().getAppBar(
        "CupertinoSegmentedControlScreen",
            () => Navigator.pop(context),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 50,
              ),
              CupertinoSegmentedControlWidget(),
              SizedBox(
                height: 50,
              ),
              CupertinoSlidingSegmentedControlWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

class CupertinoSegmentedControlWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CupertinoSegmentedControl<int>(
          children: {
            1: Padding(
              padding: EdgeInsets.all(5.0),
              child: Text("Segment 1"),
            ),
            2: Padding(
              padding: EdgeInsets.all(5.0),
              child: Text("Segment 2"),
            ),
            3: Padding(
              padding: EdgeInsets.all(5.0),
              child: Text("Segment 3"),
            ),
            4: Padding(
              padding: EdgeInsets.all(5.0),
              child: Text("Segment 4"),
            ),
          },
          onValueChanged: (value) {
            print("onValueChanged " + value.toString());
          },
        ),
      ],
    );
  }
}

class CupertinoSlidingSegmentedControlWidget extends StatefulWidget {
  @override
  _CupertinoSlidingSegmentedControlWidgetState createState() =>
      _CupertinoSlidingSegmentedControlWidgetState();
}

class _CupertinoSlidingSegmentedControlWidgetState
    extends State<CupertinoSlidingSegmentedControlWidget> {
  var groupValue = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CupertinoSlidingSegmentedControl<int>(
          children: {
            1: Padding(
              padding: EdgeInsets.all(5.0),
              child: Text("Segment 1"),
            ),
            2: Padding(
              padding: EdgeInsets.all(5.0),
              child: Text("Segment 2"),
            ),
            3: Padding(
              padding: EdgeInsets.all(5.0),
              child: Text("Segment 3"),
            ),
            4: Padding(
              padding: EdgeInsets.all(5.0),
              child: Text("Segment 4"),
            ),
          },
          onValueChanged: (value) {
            print("onValueChanged " + value.toString());
            setState(() => groupValue = value);
          },
          groupValue: groupValue,
        ),
      ],
    );
  }
}
