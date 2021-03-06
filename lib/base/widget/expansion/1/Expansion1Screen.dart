import 'package:flutter/material.dart';
import 'package:hello_word/base/util/UIUtils.dart';
import 'package:hello_word/base/widget/expansion/1/Item.dart';

class Expansion1Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils().getAppBar(
        "Expansion1Screen",
        () => Navigator.pop(context),
        null,
      ),
      body: ExpansionPanelWidget(),
    );
  }
}

class ExpansionPanelWidget extends StatefulWidget {
  @override
  _ExpansionPanelWidgetState createState() => _ExpansionPanelWidgetState();
}

class _ExpansionPanelWidgetState extends State<ExpansionPanelWidget> {
  List<Item> _data = generateItems(3);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          child: buildPanel(),
        ),
      ],
    );
  }

  Widget buildPanel() {
    return ExpansionPanelList(
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          _data[index].isExpanded = !isExpanded;
        });
      },
      children: _data.map<ExpansionPanel>((Item item) {
        return ExpansionPanel(
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
              title: Text(item.headerValue),
            );
          },
          body: ListTile(
              title: Text(item.expandedValue),
              subtitle: Text('Click to delete'),
              trailing: Icon(Icons.delete),
              onTap: () => setState(() =>
                  _data.removeWhere((currentItem) => item == currentItem))),
          isExpanded: item.isExpanded,
        );
      }).toList(),
    );
  }
}
