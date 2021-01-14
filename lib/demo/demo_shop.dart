import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello_word/demo/db/Db.dart';
import 'package:hello_word/model/Product.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final listProduct = Db.getListProduct();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shop',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Shop'),
        ),
        body: Center(
            child: ListView.builder(
          itemBuilder: (context, index) {
            return GestureDetector(
              child: ProductBox(
                product: listProduct[index],
              ),
              onTap: () {},
            );
          },
          itemCount: listProduct.length,
        )),
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

class ProductBox extends StatelessWidget {
  ProductBox({Key key, this.product}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      height: 200,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              width: 200,
              height: 200,
              child: Image.asset(
                "assets/images/" + this.product.image,
                fit: BoxFit.fitWidth,
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      product.name,
                      style: TextStyle(fontSize: 22, color: Colors.green),
                    ),
                    Text(product.description),
                    Text(
                      product.price.toString(),
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.pink),
                    ),
                    RatingBox(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
