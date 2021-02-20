import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
        appBar: AppBar(
          title: Text('Scaffold'),
        ),
        body: Center(
          child: ValueListenableBuilderWidget(),
        )),
    // Set the theme's primary color, accent color,
    theme: ThemeData(
      primarySwatch: Colors.green,
      accentColor: Colors.lightGreenAccent,
      // Set background color
      backgroundColor: Colors.black12,
    ),
  ));
}

class ValueListenableBuilderWidget extends StatefulWidget {
  @override
  _ValueListenableBuilderWidgetState createState() =>
      _ValueListenableBuilderWidgetState();
}

class _ValueListenableBuilderWidgetState
    extends State<ValueListenableBuilderWidget> {
  int _counter = 0;

  final ValueNotifier<int> _notifier = ValueNotifier<int>(0);

  void _incrementCounter() {
    _counter++;
    _notifier.value++;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        //'SetState is not called when data is modified, so data not managed by ValueListenableBuilder will not change'
        SizedBox(height: 20),
        ValueListenableBuilder(
          valueListenable: _notifier,
          builder: (context, value, widget) {
            return Text('Click with ValueListenableBuilder $value');
          },
        ),
        SizedBox(height: 20),
        Text('Click without setState $_counter'),
        SizedBox(height: 20),
        RaisedButton(
          onPressed: () {
            _incrementCounter();
          },
          child: Text('Click me'),
        ),
      ],
    );
  }
}
