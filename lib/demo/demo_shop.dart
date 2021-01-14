import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shop',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Shop'),
        ),
        body: Center(
          child: RatingBox(),
        ),
      ),
    );
  }
}

class RatingBox extends StatefulWidget {
  @override
  _RatingBoxState createState() {
    return _RatingBoxState();
  }
}

class _RatingBoxState extends State<RatingBox> {
  int rating = 0;

  void setRating(int rating) {
    setState(() {
      this.rating = rating;
    });
  }

  @override
  Widget build(BuildContext context) {
    double _size = 20;
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Container(
            padding: EdgeInsets.all(0),
            child: IconButton(
              icon: this.rating >= 1
                  ? (Icon(
                      Icons.star,
                      size: _size,
                    ))
                  : (Icon(
                      Icons.star_border,
                      size: _size,
                    )),
              color: Colors.red[500],
              onPressed: () {
                setRating(1);
              },
              iconSize: _size,
            )),
        Container(
            padding: EdgeInsets.all(0),
            child: IconButton(
              icon: this.rating >= 2
                  ? (Icon(
                      Icons.star,
                      size: _size,
                    ))
                  : (Icon(
                      Icons.star_border,
                      size: _size,
                    )),
              color: Colors.red[500],
              onPressed: () {
                setRating(2);
              },
              iconSize: _size,
            )),
        Container(
            padding: EdgeInsets.all(0),
            child: IconButton(
              icon: this.rating >= 3
                  ? (Icon(
                      Icons.star,
                      size: _size,
                    ))
                  : (Icon(
                      Icons.star_border,
                      size: _size,
                    )),
              color: Colors.red[500],
              onPressed: () {
                setRating(3);
              },
              iconSize: _size,
            )),
      ],
    );
  }
}
