import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hello_word/base/util/ui_utils.dart';

class FutureBuilderScreen extends StatefulWidget {
  @override
  _FutureBuilderScreenState createState() => _FutureBuilderScreenState();
}

class _FutureBuilderScreenState extends State<FutureBuilderScreen> {
  var show = '';
  bool isClick = false;

  Future<String> getData() async {
    await Future.delayed(Duration(seconds: 3));
    return Future.value(
      'Fetch data from mock',
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils().getAppBar(
        "FutureBuilderScreen",
        () => Navigator.pop(context),
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: 300,
            child: Center(
              child: FutureBuilder<String>(
                future: isClick ? getData() : null,
                builder: (context, snapshot) {
                  switch (snapshot.connectionState) {
                    case ConnectionState.none:
                      print("ConnectionState.none");
                      return Text('No FutureBuilder attached');
                      break;
                    case ConnectionState.waiting:
                      print("ConnectionState.waiting");
                      return CircularProgressIndicator();
                      break;
                    case ConnectionState.active:
                      print("ConnectionState.active");
                      return CircularProgressIndicator();
                      break;
                    case ConnectionState.done:
                      print("ConnectionState.done");
                      if (snapshot.hasError) {
                        return Text(snapshot.error.toString());
                      } else {
                        return Text(snapshot.data.toString());
                      }
                      break;
                    default:
                      return CircularProgressIndicator();
                      break;
                  }
                },
              ),
            ),
          ),
          RaisedButton(
            onPressed: () {
              setState(() {
                isClick = !isClick;
              });
            },
            child: Text('Fetch data'),
          ),
        ],
      ),
    );
  }
}
