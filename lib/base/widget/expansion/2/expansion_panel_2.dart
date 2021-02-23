import 'package:flutter/material.dart';
import 'package:hello_word/base/util/ui_utils.dart';
import 'package:hello_word/base/widget/expansion/2/entry.dart';

class ExpansionPanelScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils().getAppBar(
        "ExpansionPanelScreen2",
        () => Navigator.pop(context),
      ),
      body: ExpansionTileWidget(),
    );
  }
}

class ExpansionTileWidget extends StatelessWidget {
  const ExpansionTileWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: ListView.builder(
            itemBuilder: (BuildContext context, int index) =>
                EntryItem(data[index]),
            itemCount: data.length,
          ),
        ),
      ],
    );
  }
}

class EntryItem extends StatelessWidget {
  const EntryItem(this.entry);

  final Entry entry;

  Widget _buildTiles(Entry root) {
    if (root.children.isEmpty) return ListTile(title: Text(root.title));
    return ExpansionTile(
      key: PageStorageKey<Entry>(root),
      title: Text(root.title),
      children: root.children.map(_buildTiles).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildTiles(entry);
  }
}
