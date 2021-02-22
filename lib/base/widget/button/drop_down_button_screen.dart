import 'package:flutter/material.dart';
import 'package:hello_word/base/util/ui_utils.dart';

class DropDownScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DropDownScreenState();
  }
}

class DropDownScreenState extends State<DropDownScreen> {
  List listFruit = ["Apple", "Banana", "Pineapple", "Mango", "Grapes"];
  List<DropdownMenuItem<String>> listDropdownMenu;
  String _selectedFruit;

  @override
  void initState() {
    listDropdownMenu = buildAndGetDropDownMenuItems(listFruit);
    _selectedFruit = listDropdownMenu[0].value;
    super.initState();
  }

  List<DropdownMenuItem<String>> buildAndGetDropDownMenuItems(List fruits) {
    List<DropdownMenuItem<String>> items = [];
    for (String fruit in fruits) {
      items.add(DropdownMenuItem(value: fruit, child: Text(fruit)));
    }
    return items;
  }

  void changedDropDownItem(String selectedFruit) {
    handleChange(selectedFruit);
    setState(() {
      _selectedFruit = selectedFruit;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils().getAppBar(
        "DropDownScreen",
            () => Navigator.pop(context),
      ),
      body: Container(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Please choose a fruit: "),
              DropdownButton(
                value: _selectedFruit,
                items: listDropdownMenu,
                onChanged: changedDropDownItem,
              )
            ],
          ),
        ),
      ),
    );
  }
}

void handleChange(String selectedFruit) {
  print("handleChange selectedFruit " + selectedFruit);
}