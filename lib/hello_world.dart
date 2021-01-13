import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("Hello MyApp");
    print(1 / 2);

    bool b = 1 == 2;
    print(b);

    var mapping = {'id': 1, 'name': 'Dart'};
    print(mapping);
    print(mapping.keys);
    print(mapping.values);
    print(mapping.entries.first);
    mapping.values.forEach((element) {
      print(element);
    });
    mapping.forEach((key, value) {
      if (key == "name") {
        print(value);
      }
    });

    print("--------------------------------------------");
    dynamic a = 123;
    print(a);
    a = "One two three";
    print(a);

    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),
        body: Center(
          child: Text('Hello World, Loitp'),
        ),
      ),
    );
  }
}
