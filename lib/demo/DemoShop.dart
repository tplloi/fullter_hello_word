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
              onTap: () {
                print("onTap " + listProduct[index].name);
              },
            );
          },
          itemCount: listProduct.length,
        )),
      ),
    );
  }
}

typedef RatingBoxCallBack = void Function(int rating);

class RatingBox extends StatefulWidget {
  final int rating;
  final RatingBoxCallBack _ratingBoxCallBack;

  RatingBox(this.rating, this._ratingBoxCallBack);

  @override
  _RatingBoxState createState() {
    return _RatingBoxState(rating);
  }
}

class _RatingBoxState extends State<RatingBox> {
  int rate;

  _RatingBoxState(int rate) {
    this.rate = rate;
  }

  void setNewRating(int newRating) {
    widget._ratingBoxCallBack.call(newRating);

    setState(() {
      this.rate = newRating;
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
              icon: this.rate >= 1
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
                setNewRating(1);
              },
              iconSize: _size,
            )),
        Container(
            padding: EdgeInsets.all(0),
            child: IconButton(
              icon: this.rate >= 2
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
                setNewRating(2);
              },
              iconSize: _size,
            )),
        Container(
            padding: EdgeInsets.all(0),
            child: IconButton(
              icon: this.rate >= 3
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
                setNewRating(3);
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
    print("ProductBox build product " + product.name);

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
                      product.name + " - " + product.rating.toString(),
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
                    RatingBox(
                        product.rating,
                        (rating) => {
                              print("RatingBox rating " + rating.toString()),
                              product.rating = rating,
                            }),
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
