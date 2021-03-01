import '../model/categories.dart';
import '../service/api_provider.dart';

class CategoriesRepository {
  ApiProvider _provider = ApiProvider();

  Future<Categories> getCategories() async {
    final response = await _provider.get("jokes/categories");
    return Categories.fromJson(response);
  }
}
