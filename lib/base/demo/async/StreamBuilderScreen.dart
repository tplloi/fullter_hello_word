import 'package:flutter/material.dart';
import 'package:hello_word/base/util/UIUtils.dart';

class StreamBuilderScreen extends StatefulWidget {
  @override
  _StreamBuilderScreenState createState() => _StreamBuilderScreenState();
}

class _StreamBuilderScreenState extends State<StreamBuilderScreen> {
  ///Preparing a stream of data where a double will be emitted every 100 milliseconds
  ///till the value reaches 101.
  var counterStream = Stream<double>.periodic(
      Duration(milliseconds: 100), (x) => (x * 2).toDouble()).take(101);
  bool _isButtonClicked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils().getAppBar(
        "StreamBuilderScreen",
        () => Navigator.pop(context),
        null,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              StreamBuilder(
                stream: _isButtonClicked ? counterStream : null,
                builder: (context, snapshot) {
                  if (!snapshot.hasData) {
                    return Container(
                        //margin: EdgeInsets.all(12),
                        //child: CircularProgressIndicator(
                        //valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),),
                        );
                  }
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.all(24),
                        height: snapshot.data,
                        width: snapshot.data,
                        color: Colors.amber[500],
                      ),
                      Container(
                        margin: EdgeInsets.all(24),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.all(6),
                              child: Text(
                                "Height: ${snapshot.data}",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.black, fontSize: 18),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(6),
                              child: Text(
                                "Width: ${snapshot.data}",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.black, fontSize: 18),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
              RaisedButton(
                onPressed: _isButtonClicked == false
                    ? () {
                        ///You need to reset UI by calling setState.
                        setState(() {
                          _isButtonClicked == false
                              ? _isButtonClicked = true
                              : _isButtonClicked = false;
                        });
                      }
                    : null,
                child: UIUtils().getText("Start Stream"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
