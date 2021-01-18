import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final MyGridView myGridView = MyGridView();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text("GridView Example"),
        ),
        body: myGridView.build(),
      ),
    );
  }
}

class MyGridView {
  GestureDetector getStructuredGridCell(name, image) {
    // Wrap the child under GestureDetector to setup a on click action
    return GestureDetector(
      onTap: () {
        print("onTap called.");
      },
      child: Card(
          elevation: 1.5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            verticalDirection: VerticalDirection.down,
            children: <Widget>[
              Text(
                name,
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.red,
                ),
              ),
              Expanded(
                child: Image.asset(
                  image,
                  fit: BoxFit.fitWidth,
                ),
              )
            ],
          )),
    );
  }

  GridView build() {
    return GridView.count(
      primary: true,
      padding: const EdgeInsets.all(1.0),
      crossAxisCount: 2,
      childAspectRatio: 0.85,
      mainAxisSpacing: 1.0,
      crossAxisSpacing: 1.0,
      children: <Widget>[
        getStructuredGridCell("Facebook", "assets/images/iv.png"),
        getStructuredGridCell("Twitter", "assets/images/iv.jpg"),
        getStructuredGridCell("Instagram", "assets/images/iv.png"),
        getStructuredGridCell("Linkedin", "assets/images/iv.jpg"),
        getStructuredGridCell("Google Plus", "assets/images/iv.png"),
        getStructuredGridCell("Launcher Icon", "assets/images/iv.png"),
      ],
    );
  }
}
