import '../service/api_provider.dart';
import '../model/chuck.dart';

class ChuckRepository {
  ApiProvider _provider = ApiProvider();

  Future<Chuck> fetchChuckJoke(String category) async {
    final response = await _provider.get("jokes/random?category=" + category);
    return Chuck.fromJson(response);
  }
}
