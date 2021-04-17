import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/util/UIUtils.dart';

import 'ProductBox.dart';
import 'ProductPageScreen.dart';
import 'db/DbShop.dart';

class ShopScreen extends StatelessWidget {
  final listProduct = DbShop.getListProduct();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "Shop",
        () => Get.back(),
        null,
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