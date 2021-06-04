import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/common/const/DimenConstants.dart';

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
              child: ClipRRect(
                borderRadius: BorderRadius.circular(150.0),
                child: Image.network(
                  "https://avatars.githubusercontent.com/u/13247132?s=400&u=118ee58d0b2649ab89820d02860fe9d1223db377&v=4",
                  width: 300,
                  height: 300,
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: DimenConstants.marginPaddingMedium)),
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
