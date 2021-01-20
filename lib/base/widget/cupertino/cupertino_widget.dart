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
              CupertinoButtonWidget(),
              SizedBox(
                height: 50,
              ),
              CupertinoContextMenuWidget(),
              SizedBox(
                height: 50,
              ),
              CupertinoDialogActionWidget(),
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

class CupertinoButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        CupertinoButton(
          child: Text('CupertinoButton'),
          onPressed: () {},
        ),
        SizedBox(height: 5),
        CupertinoButton.filled(
          child: Text('CupertinoButton'),
          onPressed: () {},
        ),
      ],
    );
  }
}

class CupertinoContextMenuWidget extends StatefulWidget {
  @override
  _CupertinoContextMenuWidgetState createState() =>
      _CupertinoContextMenuWidgetState();
}

class _CupertinoContextMenuWidgetState
    extends State<CupertinoContextMenuWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 100,
          height: 100,
          child: CupertinoContextMenu(
            child: Container(
              child: Image.asset('assets/images/iv.jpg'),
            ),
            actions: <Widget>[
              CupertinoContextMenuAction(
                child: const Text('Action one'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              CupertinoContextMenuAction(
                child: const Text('Action two'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class CupertinoDialogActionWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        CupertinoButton(
          color: Colors.blue,
          child: Text('Show CupertinoDialogActionWidget'),
          onPressed: () {
            showCupertinoDialog(
              context: context,
              builder: (BuildContext context) {
                return CupertinoAlertDialog(
                  title: Text('Title'),
                  content: Text('Content'),
                  actions: <Widget>[
                    CupertinoDialogAction(
                      child: Text('Item1'),
                      isDestructiveAction: true,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    CupertinoDialogAction(
                      child: Text('Item2'),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    CupertinoDialogAction(
                      child: Text('Item3'),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
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
