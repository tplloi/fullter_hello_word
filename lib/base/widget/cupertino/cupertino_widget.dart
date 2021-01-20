import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text("Cupertino"),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Column(
            children: <Widget>[
              CupertinoActivityIndicatorWidget(),
              SizedBox(
                height: 50,
              ),
              CupertinoAlertDialogWidget(),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    ),
    // Set the theme's primary color, accent color,
    theme: ThemeData(
      primarySwatch: Colors.green,
      accentColor: Colors.lightGreenAccent,
      // Set background color
      backgroundColor: Colors.black12,
    ),
  ));
}

class CupertinoActivityIndicatorWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        CupertinoActivityIndicator(),
        SizedBox(height: 20),
        CupertinoActivityIndicator(radius: 30.0),
        SizedBox(height: 20),
        CupertinoActivityIndicator(
          animating: false,
          radius: 30.0,
        )
      ],
    );
  }
}

class CupertinoAlertDialogWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        CupertinoButton(
          color: Colors.blue,
          pressedOpacity: 0.6,
          child: Text('Show AlertDialog'),
          onPressed: () {
            showCupertinoDialog(
              context: context,
              builder: (BuildContext context) {
                return CupertinoAlertDialog(
                  title: Text('Title'),
                  content: Text('Content'),
                  actions: <Widget>[
                    CupertinoDialogAction(
                      child: Text('OK'),
                      isDestructiveAction: true,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    CupertinoDialogAction(
                      child: Text('Cancel'),
                      isDefaultAction: true,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    )
                  ],
                );
              },
            );
          },
        ),
      ],
    );
  }
}
