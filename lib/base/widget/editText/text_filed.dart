import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyHome(),
    theme: ThemeData(
      primarySwatch: Colors.blue,
      accentColor: Colors.blue,
      backgroundColor: Colors.white,
    ),
  ));
}

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar
      appBar: AppBar(
        // AppBar Title
        title: Text("TextFieldWidget"),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 200,
              child: TextFieldWidget(),
            )
          ],
        ),
      ),
    );
  }
}

class TextFieldWidget extends StatefulWidget {
  @override
  _TextFieldWidgetState createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  var selection;
  var textInputActionSelection = TextInputAction.done;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        TextField(
          keyboardType: selection,
          decoration: InputDecoration(
            labelText: 'labelText',
            contentPadding: EdgeInsets.all(10.0),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          onChanged: (value) {
            print("onChanged value " + value.toString());
          },
          autofocus: false,
        ),
      ],
    );
  }
}
