import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/common/const/DimenConstants.dart';
import 'package:hello_word/lib/util/SharedPreferencesUtil.dart';
import 'package:hello_word/lib/util/UIUtils.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesScreen extends StatefulWidget {
  @override
  SharedPreferencesScreenState createState() {
    return SharedPreferencesScreenState();
  }
}

class SharedPreferencesScreenState extends State<SharedPreferencesScreen> {
  var nameOfApp = "SharedPreferencesScreen";
  var counter = 0;
  bool? boolValue = false;

  // define a key to use later
  var key = "counter";

  @override
  void initState() {
    super.initState();
    _loadSavedData();
  }

  _loadSavedData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      // Get value
      counter = (prefs.getInt(key) ?? 0);
    });

    SharedPreferencesUtil.getBool(SharedPreferencesUtil.KEY_TEST_BOOL)
        .then((value) {
      boolValue = value;
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
              UIUtils.getText("$counter"),
              Padding(
                  padding: EdgeInsets.all(DimenConstants.marginPaddingMedium)),
              UIUtils.getButton("Increment Counter", () => _onIncrementHit()),
              UIUtils.getButton("Decrement Counter", () => _onDecrementHit()),
              SizedBox(height: 50),
              UIUtils.getText("$boolValue"),
              UIUtils.getButton("set true", () {
                SharedPreferencesUtil.setBool(
                        SharedPreferencesUtil.KEY_TEST_BOOL, true)
                    .then((value) {
                  setState(() {
                    boolValue = true;
                  });
                });
              }),
              UIUtils.getButton("set false", () {
                SharedPreferencesUtil.setBool(
                        SharedPreferencesUtil.KEY_TEST_BOOL, false)
                    .then((value) {
                  setState(() {
                    boolValue = false;
                  });
                });
              }),
            ],
          ),
        ),
      ),
    );
  }
}
