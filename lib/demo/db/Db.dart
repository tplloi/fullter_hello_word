import 'package:hello_word/model/Product.dart';

class Db {
  static List<Product> getListProduct() {
    List<Product> listProduct = <Product>[];
    for (int i = 0; i < 10; i++) {
      String img = i.isOdd ? ("iv.png") : ("iv.jpg");
      Product p = Product(
          "name " + i.toString(), "description " + i.toString(), i * 1000, img);
      listProduct.add(p);
    }

    return listProduct.toList();
  }

  static Product getRandomProduct() {
    return (getListProduct().toList()..shuffle()).first;
  }
}
