import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/util/UIUtils.dart';
import 'package:http/http.dart' as http;

class GetHttpDataScreen extends StatefulWidget {
  @override
  GetHttpDataScreenState createState() => GetHttpDataScreenState();
}

// Create the state for our stateful base.widget
class GetHttpDataScreenState extends State<GetHttpDataScreen> {
  final String _url = "https://swapi.dev/api/people";
  List _listData;

  // Function to get the JSON data
  Future<String> getJSONData() async {
    var response = await http.get(
      // Encode the url
      Uri.encodeFull(_url),
      // Only accept JSON response
      headers: {"Accept": "application/json"},
    );

    // Logs the response body to the console
    print(response.body);

    // To modify the state of the app, use this method
    setState(() {
      // Get the JSON data
      var dataConvertedToJSON = json.decode(response.body);
      // Extract the required part and assign it to the global variable named data
      _listData = dataConvertedToJSON['results'];
    });

    return "Successfull";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "GetHttpDataScreen",
        () => Get.back(),
        null,
      ),
      // Create a Listview and load the data when available
      body: ListView.builder(
          itemCount: _listData == null ? 0 : _listData.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              child: Center(
                child: Column(
                  // Stretch the cards in horizontal axis
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Card(
                      child: Container(
                        child: Text(
                          // Read the name field value and set it in the Text widget
                          _listData[index]['name'] + " " + _listData[index]['height'],
                          // set some style to text
                          style: TextStyle(
                              fontSize: 20.0, color: Colors.lightBlueAccent),
                        ),
                        // added padding
                        padding: const EdgeInsets.all(15.0),
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }

  @override
  void initState() {
    super.initState();

    // Call the getJSONData() method when the app initializes
    this.getJSONData();
  }
}
