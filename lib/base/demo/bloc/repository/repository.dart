import 'package:hello_word/base/demo/bloc/model/chuck.dart';

import '../model/categories.dart';
import '../service/api_provider.dart';

class Repository {
  ApiProvider _provider = ApiProvider();

  Future<Categories> getCategories() async {
    final response = await _provider.get("jokes/categories");
    return Categories.fromJson(response);
  }

  Future<Chuck> getChuck(String category) async {
    final response = await _provider.get("jokes/random?category=" + category);
    return Chuck.fromJson(response);
  }
}
