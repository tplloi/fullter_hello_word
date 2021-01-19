import 'package:flutter/material.dart';
import 'package:hello_word/base/widget/list/list2/contact_page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text("Using ListView"),
      ),
      body: ContactPage(),
    ),
  ));
}