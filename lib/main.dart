import 'package:flutter/material.dart';

void main() {
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

  print("--------------------------------------------");
  for (int i = 0; i < 5; i++) {
    if (i % 2 == 0) {
      print("-> " + i.toString());
    }
  }

  print("--------------------------------------------");
  void add(int a, int b) {
    print("Sum: " + (a + b).toString());
  }

  add(6, 9);

  print("--------------------------------------------");
  People p = People("Loitp123456");
  p.showData();

  runApp(MyApp());
}

class People {
  String name = "";

  People(String name) {
    this.name = name;
  }

  void showData() {
    print("showData " + this.name);
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),
        body: Center(
          child: Text(
            'Hello World, Loitp',
          ),
        ),
      ),
    );
  }
}