import 'package:flutter/material.dart';
import 'package:hello_word/base/util/ui_utils.dart';

class AnimatedThemeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils().getAppBar(
        "AnimatedThemeScreen",
        () => Navigator.pop(context),
      ),
      body: Center(
        child: AnimatedThemeWidget(),
      ),
    );
  }
}

class AnimatedThemeWidget extends StatefulWidget {
  @override
  _AnimatedThemeWidgetState createState() => _AnimatedThemeWidgetState();
}

class _AnimatedThemeWidgetState extends State<AnimatedThemeWidget> {
  var isLight = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        AnimatedTheme(
          data: isLight ? ThemeData.light() : ThemeData.dark(),
          duration: const Duration(seconds: 1),
          child: Card(
            child: const Padding(
              padding: EdgeInsets.all(32),
              child: Text(
                'Flutter',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ),
        RaisedButton(
          onPressed: () {
            setState(() => isLight = !isLight);
          },
          child: Text('Change theme'),
        ),
      ],
    );
  }
}
