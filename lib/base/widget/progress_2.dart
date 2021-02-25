import 'dart:async';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CircularProgressIndicatorApp(),
    );
  }
}

class CircularProgressIndicatorApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return CircularProgressIndicatorAppState();
  }
}

class CircularProgressIndicatorAppState
    extends State<CircularProgressIndicatorApp> {
  bool _loading;
  double _progressValue;

  @override
  void initState() {
    super.initState();
    _loading = false;
    _progressValue = 0.0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Circular Progress Bar"),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(14.0),
          child: _loading
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircularProgressIndicator(
                      strokeWidth: 10,
                      backgroundColor: Colors.yellow,
                      valueColor: new AlwaysStoppedAnimation<Color>(Colors.red),
                      value: _progressValue,
                    ),
                    Text('${(_progressValue * 100).round()}%'),
                  ],
                )
              : Text("Press button for downloading",
                  style: TextStyle(fontSize: 25)),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _loading = !_loading;
            _updateProgress();
          });
        },
        child: Icon(Icons.cloud_download),
      ),
    );
  }

  // this function updates the progress value
  void _updateProgress() {
    const oneSec = const Duration(seconds: 1);
    new Timer.periodic(oneSec, (Timer t) {
      setState(() {
        _progressValue += 0.2;
        // we "finish" downloading here
        if (_progressValue.toStringAsFixed(1) == '1.0') {
          _loading = false;
          t.cancel();
          return;
        }
      });
    });
  }
}
