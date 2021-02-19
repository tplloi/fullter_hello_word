import 'package:flutter/material.dart';
import 'package:hello_word/base/util/ui_utils.dart';

class RotationTransitionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils().getAppBar(
        "RotationTransitionScreen",
        () => Navigator.pop(context),
      ),
      body: Center(
        child: RotationTransitionWidget(),
      ),
    );
  }
}

class RotationTransitionWidget extends StatefulWidget {
  @override
  _RotationTransitionWidgetState createState() =>
      _RotationTransitionWidgetState();
}

class _RotationTransitionWidgetState extends State<RotationTransitionWidget>
    with SingleTickerProviderStateMixin {
  final Tween<double> turnsTween = Tween<double>(
    begin: 1,
    end: 3,
  );
  AnimationController controller;
  bool status = true;

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RotationTransition(
          turns: turnsTween.animate(controller),
          child: Container(
            color: Colors.purple[300],
            width: 200,
            height: 200,
            padding: EdgeInsets.all(20),
            child: FlutterLogo(),
          ),
        ),
        RaisedButton(
          onPressed: () {
            status ? controller.forward() : controller.reverse();
            status = !status;
          },
          child: Text("Change Rotation"),
        )
      ],
    );
  }
}
