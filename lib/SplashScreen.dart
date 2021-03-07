import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hello_word/base/const/Constants.dart';
import 'package:hello_word/MenuScreen.dart';
import 'package:hello_word/base/util/LLog.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      // statusBarColor: Colors.blue, // status bar color
      // statusBarIconBrightness: Brightness.light, // status bar icons' color

      systemNavigationBarColor: Colors.blue, // navigation bar color
      systemNavigationBarIconBrightness:
          Brightness.light, //navigation bar icons' color
    ),
  );
  testLogger();
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: true,
      home: SplashScreen(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
        accentColor: Colors.blueAccent,
        backgroundColor: Colors.white,
      ),
    ),
  );
}

void testLogger() {
  LLog.instance.logger.d("testLogger");
  LLog.instance.logger.e("testLogger");
  LLog.instance.logger.v("testLogger");
  LLog.instance.logger.i("testLogger");
  LLog.instance.loggerNoStack.d("testLogger");
  LLog.instance.loggerNoStack.v("testLogger");
  LLog.instance.loggerNoStack.e("testLogger");
}

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SplashScreenState();
  }
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    startTime();
  }

  startTime() async {
    var duration = new Duration(seconds: 3);
    return new Timer(duration, route);
  }

  route() {
    print("delay finish");
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => MenuScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Image.network(
                Constants.flutterIcon,
                width: 200,
                height: 200,
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 20.0)),
            CircularProgressIndicator(
              backgroundColor: Colors.white,
              strokeWidth: 3,
            )
          ],
        ),
      ),
    );
  }
}
