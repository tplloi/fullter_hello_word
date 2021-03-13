import 'dart:async';

import 'package:hello_word/base/demo/bloc/repository/Repository.dart';

import '../model/Categories.dart';
import '../service/AppResponse.dart';

class CategoriesBloc {
  Repository _repository;
  StreamController _categoriesController;

  StreamSink<AppResponse<Categories>> get categoriesSink =>
      _categoriesController.sink;

  Stream<AppResponse<Categories>> get categoriesStream =>
      _categoriesController.stream;

  CategoriesBloc() {
    _repository = Repository();
    _categoriesController = StreamController<AppResponse<Categories>>();

    fetchCategories();
  }

  fetchCategories() async {
    categoriesSink.add(
      AppResponse.loading('Loading categories...'),
    );
    try {
      Categories categories = await _repository.getCategories();
      categoriesSink.add(
        AppResponse.completed(categories),
      );
    } catch (e) {
      categoriesSink.add(
        AppResponse.error(e.toString()),
      );
      print(e);
    }
  }

  dispose() {
    _categoriesController?.close();
  }
}
