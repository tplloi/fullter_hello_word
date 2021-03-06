import 'package:flutter/material.dart';
import 'package:hello_word/base/util/UIUtils.dart';

import 'utils.dart';

class BottomSheetHomePage extends StatefulWidget {
  BottomSheetHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _BottomSheetHomePageState createState() => _BottomSheetHomePageState();
}

class _BottomSheetHomePageState extends State<BottomSheetHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils().getAppBar(
        widget.title,
        () => Navigator.pop(context),
        null,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new RaisedButton(
              child: Text(
                "Bottom Sheet",
                style: TextStyle(fontSize: 20),
              ),
              onPressed: () {
                _openBottomSheet(context);
              },
            )
          ],
        ),
      ),
    );
  }
}

void _openBottomSheet(context) {
  showModalBottomSheet(
    context: context,
    builder: (builder) {
      return new Container(
        padding: EdgeInsets.all(5.0),
        child: new Wrap(
          children: <Widget>[
            getListTile(
                Icons.more,
                Colors.black45,
                "More",
                () => {
                      print("More"),
                      Navigator.pop(context),
                    }),
            getListTile(
                Icons.favorite,
                Colors.pink,
                "Favourites",
                () => {
                      print("Favourites"),
                      Navigator.pop(context),
                    }),
            getListTile(
                Icons.account_box,
                Colors.blue,
                "Profile",
                () => {
                      print("Profile"),
                      Navigator.pop(context),
                    }),
            new Divider(
              thickness: 2.0,
              height: 10.0,
            ),
            getListTile(
                Icons.exit_to_app,
                null,
                "Logout",
                () => {
                      print("Logout"),
                      Navigator.pop(context),
                    }),
          ],
        ),
      );
    },
  );
}
