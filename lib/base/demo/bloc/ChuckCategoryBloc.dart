import 'dart:async';

import 'ChuckCategoryRepository.dart';
import 'model/categories.dart';
import 'response.dart';

class ChuckCategoryBloc {
  ChuckCategoryRepository _chuckRepository;
  StreamController _chuckListController;

  StreamSink<Response<Categories>> get chuckListSink =>
      _chuckListController.sink;

  Stream<Response<Categories>> get chuckListStream =>
      _chuckListController.stream;

  ChuckCategoryBloc() {
    _chuckListController = StreamController<Response<Categories>>();
    _chuckRepository = ChuckCategoryRepository();
    fetchCategories();
  }

  fetchCategories() async {
    chuckListSink.add(Response.loading('Getting Chuck Categories.'));
    try {
      Categories chuckCats =
          await _chuckRepository.fetchChuckCategoryData();
      chuckListSink.add(Response.completed(chuckCats));
    } catch (e) {
      chuckListSink.add(Response.error(e.toString()));
      print(e);
    }
  }

  dispose() {
    _chuckListController?.close();
  }
}
