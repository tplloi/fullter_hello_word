import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/util/UIUtils.dart';

//https://blog.usejournal.com/flutter-search-in-listview-1ffa40956685
class ListViewSearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "ListViewSearchScreen",
        () => Get.back(),
        null,
      ),
      body: ListViewSearchWidget(title: "Suzuki"),
    );
  }
}

class ListViewSearchWidget extends StatefulWidget {
  ListViewSearchWidget({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _ListViewSearchWidgetState createState() => new _ListViewSearchWidgetState();
}

class _ListViewSearchWidgetState extends State<ListViewSearchWidget> {
  TextEditingController textEditingController = TextEditingController();

  final listDuplicateItem = List<String>.generate(10000, (i) => "Item $i");
  var listItem = [];

  @override
  void initState() {
    listItem.addAll(listDuplicateItem);
    super.initState();
  }

  void filterSearchResults(String query) {
    List<String> listDummySearch = [];
    listDummySearch.addAll(listDuplicateItem);

    if (query.isEmpty) {
      setState(() {
        listItem.clear();
        listItem.addAll(listDuplicateItem);
      });
    } else {
      List<String> listDummyData = [];
      listDummySearch.forEach((item) {
        if (item.contains(query)) {
          listDummyData.add(item);
        }
      });
      setState(() {
        listItem.clear();
        listItem.addAll(listDummyData);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              onChanged: (value) {
                filterSearchResults(value);
              },
              controller: textEditingController,
              decoration: InputDecoration(
                labelText: "Search",
                hintText: "Search",
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(25.0),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: listItem.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text('${listItem[index]}'),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
