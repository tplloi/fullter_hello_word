import 'dart:async';

import 'package:hello_word/base/demo/bloc/repository/Repository.dart';

import '../model/Categories.dart';
import '../service/Response.dart';

class CategoriesBloc {
  Repository _repository;
  StreamController _categoriesController;

  StreamSink<Response<Categories>> get categoriesSink =>
      _categoriesController.sink;

  Stream<Response<Categories>> get categoriesStream =>
      _categoriesController.stream;

  CategoriesBloc() {
    _repository = Repository();
    _categoriesController = StreamController<Response<Categories>>();

    fetchCategories();
  }

  fetchCategories() async {
    categoriesSink.add(
      Response.loading('Loading categories...'),
    );
    try {
      Categories categories = await _repository.getCategories();
      categoriesSink.add(
        Response.completed(categories),
      );
    } catch (e) {
      categoriesSink.add(
        Response.error(e.toString()),
      );
      print(e);
    }
  }

  dispose() {
    _categoriesController?.close();
  }
}
