import 'service/api_provider.dart';
import 'model/categories.dart';

class ChuckCategoryRepository {
  ApiProvider _provider = ApiProvider();

  Future<Categories> fetchChuckCategoryData() async {
    final response = await _provider.get("jokes/categories");
    return Categories.fromJson(response);
  }
}
