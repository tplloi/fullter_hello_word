import 'package:flutter/material.dart';

//TODO
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
        appBar: AppBar(
          title: Text('Scaffold'),
        ),
        body: Center(
          child: InheritedWidgetWidget(),
        )),
    // Set the theme's primary color, accent color,
    theme: ThemeData(
      primarySwatch: Colors.green,
      accentColor: Colors.lightGreenAccent,
      // Set background color
      backgroundColor: Colors.black12,
    ),
  ));
}

class InheritedWidgetWidget extends StatefulWidget {
  @override
  _InheritedWidgetWidgetState createState() => _InheritedWidgetWidgetState();
}

class _InheritedWidgetWidgetState extends State<InheritedWidgetWidget> {
  int count = 0;

  void _incrementCounter() => setState(() => count++);

  @override
  Widget build(BuildContext context) {
    return Root(
      state: this,
      increment: _incrementCounter,
      child: Child(),
    );
  }
}

class Child extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    debugPrint('build');
    Root root = Root.of(context);
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'InheritedWidget itself does not have the function of writing data. It needs to combine State to obtain the ability to modify data.',
            style: TextStyle(color: Colors.black38),
          ),
        ),
        Text(
          'show ${root.state.count}',
          style: TextStyle(fontSize: 20),
        ),
        RaisedButton(
          onPressed: () {
            root.increment();
          },
          child: Text('Add'),
        ),
      ],
    );
  }
}

// Support both reading and writing
class Root extends InheritedWidget {
  static Root of(BuildContext context) =>
      context.inheritFromWidgetOfExactType(Root) as Root;

  final _InheritedWidgetWidgetState state;

  final increment;

  Root({
    Key key,
    @required this.state,
    @required this.increment,
    @required Widget child,
  }) : super(key: key, child: child);

  // Determine if it needs to be updated
  @override
  bool updateShouldNotify(Root oldWidget) =>
      state.count != oldWidget.state.count;
}

// Only supports reading attributes
class ReadOnlyRoot extends InheritedWidget {
  static ReadOnlyRoot of(BuildContext context) =>
      context.inheritFromWidgetOfExactType(Root) as ReadOnlyRoot;

  final int count;

  ReadOnlyRoot({
    Key key,
    @required this.count,
    @required Widget child,
  }) : super(key: key, child: child);

  @override
  bool updateShouldNotify(ReadOnlyRoot oldWidget) => count != oldWidget.count;
}
