import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/util/UIUtils.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesScreen extends StatefulWidget {
  @override
  SharedPreferencesScreenState createState() {
    return SharedPreferencesScreenState();
  }
}

class SharedPreferencesScreenState extends State<SharedPreferencesScreen> {
  var nameOfApp = "Persist Key Value";

  var counter = 0;

  // define a key to use later
  var key = "counter";

  @override
  void initState() {
    super.initState();
    _loadSavedData();
  }

  _loadSavedData() async {
    // Get shared preference instance
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      // Get value
      counter = (prefs.getInt(key) ?? 0);
    });
  }

  _onIncrementHit() async {
    // Get shared preference instance
    SharedPreferences prefs = await SharedPreferences.getInstance();

    setState(() {
      // Get value
      counter = (prefs.getInt(key) ?? 0) + 1;
    });

    // Save Value
    prefs.setInt(key, counter);
  }

  _onDecrementHit() async {
    // Get shared preference instance
    SharedPreferences prefs = await SharedPreferences.getInstance();

    setState(() {
      // Get value
      counter = (prefs.getInt(key) ?? 0) - 1;
    });

    // Save Value
    prefs.setInt(key, counter);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Appbar
      appBar: UIUtils.getAppBar(
        nameOfApp,
        () => Get.back(),
        null,
      ),
      // Body
      body: Container(
        // Center the content
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                '$counter',
                textScaleFactor: 10.0,
              ),
              Padding(padding: EdgeInsets.all(10.0)),
              UIUtils.getButton("Increment Counter", () => _onIncrementHit()),
              Padding(padding: EdgeInsets.all(10.0)),
              UIUtils.getButton("Decrement Counter", () => _onDecrementHit()),
            ],
          ),
        ),
      ),
    );
  }
}