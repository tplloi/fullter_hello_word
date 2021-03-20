import 'package:flutter/material.dart';

import 'MySearchDelegate.dart';

class SearchDelegateScreen extends StatefulWidget {
  @override
  _SearchDelegateScreenState createState() => _SearchDelegateScreenState();
}

class _SearchDelegateScreenState extends State<SearchDelegateScreen> {
  final List<String> listWord;
  MySearchDelegate mySearchDelegate;

  _SearchDelegateScreenState()
      : listWord = ['a', 'ab', 'abc', 'ac', 'ad', 'ae', 'af', 'ag', 'ah', 'aj']
          ..sort((w1, w2) => w1.toLowerCase().compareTo(w2.toLowerCase())),
        super();

  @override
  void initState() {
    super.initState();
    mySearchDelegate = MySearchDelegate(listWord);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('English Words'),
        actions: <Widget>[
          IconButton(
            tooltip: 'Search',
            icon: const Icon(Icons.search),
            onPressed: () async {
              final String selected = await showSearch<String>(
                context: context,
                delegate: mySearchDelegate,
              );
              if (selected != null) {
                Scaffold.of(context).showSnackBar(
                  SnackBar(
                    content: Text('You have selected the word: $selected'),
                  ),
                );
              }
            },
          ),
        ],
      ),
      body: Scrollbar(
        child: ListView.builder(
          itemCount: listWord.length,
          itemBuilder: (context, idx) => ListTile(
            title: Text(listWord[idx]),
          ),
        ),
      ),
    );
  }
}
