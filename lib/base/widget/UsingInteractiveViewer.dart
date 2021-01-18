import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Using InteractiveViewer"),
        ),
        body: InteractiveViewer(
          boundaryMargin: EdgeInsets.all(100.0),
          minScale: 0.1,
          maxScale: 1.6,
          child: Center(
            // child: FlutterLogo(
            //   size: 90,
            // ),

            child: sample2(),
          ),
        ),
      ),
    );
  }

  Widget sample2() {
    return Image.network(
        'https://kenh14cdn.com/thumb_w/620/203336854389633024/2021/1/7/twicetagram1357930997262241449547326385986409313769088n-16100315347381560754045.jpg');
  }
}
