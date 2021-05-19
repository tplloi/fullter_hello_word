import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/util/UIUtils.dart';
import 'package:hello_word/sample/model/Product.dart';

import 'RatingBox.dart';

class ProductPageScreen extends StatelessWidget {
  ProductPageScreen({
    Key? key,
    this.product,
  }) : super(key: key);
  final Product? product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "ProductPageScreen " + product!.name,
        () => Get.back(),
        null,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              Image.asset("assets/images/" + product!.image),
              Text(product!.name),
              Text(product!.description),
              Text(product!.price.toString()),
              RatingBox(
                product!.rating,
                (rating) => {
                  print("ProductPage rating " + rating.toString()),
                  product!.rating = rating,
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
