import 'package:flutter/material.dart';
import 'package:hello_word/base/demo/shop/rating_box.dart';
import 'package:hello_word/base/model/product.dart';
import 'package:hello_word/base/util/ui_utils.dart';

class ProductPageScreen extends StatelessWidget {
  ProductPageScreen({
    Key key,
    this.product,
  }) : super(key: key);
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils().getAppBar(
        "ProductPageScreen " + product.name,
        () => Navigator.pop(context),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              Image.asset("assets/images/" + product.image),
              Text(product.name),
              Text(product.description),
              Text(product.price.toString()),
              RatingBox(
                  product.rating,
                  (rating) => {
                        print("ProductPage rating " + rating.toString()),
                        product.rating = rating,
                      })
            ],
          ),
        ),
      ),
    );
  }
}
