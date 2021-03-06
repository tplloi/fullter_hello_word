import 'package:flutter/material.dart';
import 'package:hello_word/base/util/UIUtils.dart';

class TextScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils().getAppBar(
        "TextScreen",
        () => Navigator.pop(context),
        null,
      ),
      body: SingleChildScrollView(
          child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(15),
        child: Column(
          children: <Widget>[
            text1(),
            SizedBox(
              height: 50,
            ),
            text2(),
            SizedBox(
              height: 50,
            ),
            text3(),
            SizedBox(
              height: 50,
            ),
            TextWidget(),
          ],
        ),
      )),
      backgroundColor: Colors.white,
    );
  }

  Widget text1() {
    return Text(
      'Hello World!\nLoitp1\nLoitp2\nLoitp3',
      style: TextStyle(fontWeight: FontWeight.bold),
      maxLines: 5,
      textAlign: TextAlign.left,
      textDirection: TextDirection.rtl,
    );
  }

  Widget text2() {
    return Text.rich(
      TextSpan(
        children: <TextSpan>[
          TextSpan(
              text: "Hello ", style: TextStyle(fontStyle: FontStyle.italic)),
          TextSpan(
              text: "World 123456",
              style: TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }

  Widget text3() {
    return Text(
      'Hello World!\nLoitp1\nLoitp2\nLoitp3',
      style: UIUtils().getCustomFontTextStyle(),
      maxLines: 5,
      textAlign: TextAlign.end,
      textDirection: TextDirection.ltr,
    );
  }
}

class TextWidget extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<TextWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Text(
            "Hello World ...",
          ),
          Text(
            "Hello World ...",
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            "Hello World ...",
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
          ),
          Text(
            "Hello World ...",
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                backgroundColor: Colors.black),
          ),
        ],
      ),
    );
  }
}
