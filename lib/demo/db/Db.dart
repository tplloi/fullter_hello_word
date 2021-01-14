import 'package:hello_word/model/Product.dart';

class Db {
  static List<Product> getListProduct() {
    List<Product> listProduct = <Product>[];
    for (int i = 0; i < 10; i++) {
      Product p = Product("name " + i.toString(), "description " + i.toString(),
          i * 1000, "image " + i.toString());
      listProduct.add(p);
    }

    return listProduct;
  }
}
