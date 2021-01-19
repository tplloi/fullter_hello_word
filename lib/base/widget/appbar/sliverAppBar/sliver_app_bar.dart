import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SliverAppBarWidget(),
    // Set the theme's primary color, accent color,
    theme: ThemeData(
      primarySwatch: Colors.green,
      accentColor: Colors.lightGreenAccent,
      // Set background color
      backgroundColor: Colors.black12,
    ),
  ));
}

class SliverAppBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          title: Text(
            "SilverAppBar title",
          ),
          snap: true,
          floating: true,
          pinned: true,
          stretch: true,
          //Max height of background Image
          expandedHeight: 160.0,
          flexibleSpace: FlexibleSpaceBar(
            collapseMode: CollapseMode.pin,
            background: Image.network(
              "https://cdn.pixabay.com/photo/2017/09/14/22/42/milky-way-2750627__340.jpg",
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
          )),
        ),
      ],
    );
  }
}
