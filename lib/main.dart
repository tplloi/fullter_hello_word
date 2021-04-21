import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'MenuScreen.dart';
import 'lib/util/LogDogUtils.dart';

//build: flutter build appbundle

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
    GetMaterialApp(
      enableLog: true,
      debugShowCheckedModeBanner: true,
      defaultTransition: Transition.cupertino,
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
  Dog.d("testLogger");
  Dog.e("testLogger");
  Dog.v("testLogger");
  Dog.i("testLogger");
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
    Get.off(MenuScreen());
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
                "https://flutter.dev/assets/flutter-lockup-1caf6476beed76adec3c477586da54de6b552b2f42108ec5bc68dc63bae2df75.png",
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
