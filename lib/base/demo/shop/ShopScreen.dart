import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello_word/base/demo/shop/db/DbShop.dart';
import 'package:hello_word/base/demo/shop/ProductBox.dart';
import 'package:hello_word/base/demo/shop/ProductPageScreen.dart';
import 'package:hello_word/base/util/UIUtils.dart';

class ShopScreen extends StatelessWidget {
  final listProduct = DbShop.getListProduct();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils().getAppBar(
        "Shop",
        () => Navigator.pop(context),
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
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        ProductPageScreen(product: listProduct[index]),
                  ),
                );
              },
            );
          },
          itemCount: listProduct.length,
        ),
      ),
    );
  }
}