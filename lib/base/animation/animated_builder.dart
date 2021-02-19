import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:hello_word/base/util/ui_utils.dart';

class AnimatedBuilderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils().getAppBar(
          "AnimatedBuilderScreen",
          () => {
                Navigator.pop(context),
              }),
      body: Center(
        child: AnimatedBuilderWidget(),
      ),
    );
  }
}

class AnimatedBuilderWidget extends StatefulWidget {
  @override
  _AnimatedBuilderWidgetState createState() => _AnimatedBuilderWidgetState();
}

class _AnimatedBuilderWidgetState extends State<AnimatedBuilderWidget>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  bool status = true;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 10),
      vsync: this,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AnimatedBuilder(
          animation: _controller,
          child: Container(width: 200.0, height: 200.0, color: Colors.green),
          builder: (BuildContext context, Widget child) {
            return Transform.rotate(
              angle: _controller.value * 2.0 * math.pi,
              child: child,
            );
          },
        ),
        SizedBox(
          height: 50,
        ),
        RaisedButton(
          onPressed: () {
            status ? _controller.forward() : _controller.reverse();
            status = !status;
          },
          child: Text("Click"),
        )
      ],
    );
  }
}
