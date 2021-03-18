import 'package:flutter/material.dart';
import 'package:hello_word/base/const/Constants.dart';

class SliverAppBarScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          title: Text(
            "SliverAppBarScreen",
          ),
          snap: true,
          floating: true,
          pinned: true,
          stretch: true,
          //Max height of background Image
          expandedHeight: 160.0,
          flexibleSpace: FlexibleSpaceBar(
            collapseMode: CollapseMode.parallax,
            background: Image.network(
              Constants.dummyImageLink,
              fit: BoxFit.fill,
            ),
          ),
        ),
        // SliverList(
        SliverFillRemaining(
          child: Center(
            child: Text(
              "Body",
              style: TextStyle(
                fontSize: 44,
                color: Colors.amberAccent,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
