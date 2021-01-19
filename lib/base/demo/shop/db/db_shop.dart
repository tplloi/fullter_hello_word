import 'package:hello_word/base/model/product.dart';

class Db {
  static List<Product> getListProduct() {
    List<Product> listProduct = <Product>[];
    for (int i = 0; i < 10; i++) {
      String img = i.isOdd ? ("iv.png") : ("iv.jpg");
      Product p = Product("Name " + i.toString(),
          "Description loitp " + i.toString(), i * 1000, img, 0);
      listProduct.add(p);
    }

    return listProduct.toList();
  }

  static Product getRandomProduct() {
    return (getListProduct().toList()..shuffle()).first;
  }
}
