import 'dart:async';

import 'package:hello_word/base/demo/bloc/repository/category_repository.dart';

import '../model/categories.dart';
import '../response.dart';

class CategoriesBloc {
  CategoriesRepository _categoriesRepository;
  StreamController _categoriesController;

  StreamSink<Response<Categories>> get categoriesSink =>
      _categoriesController.sink;

  Stream<Response<Categories>> get categoriesStream =>
      _categoriesController.stream;

  CategoriesBloc() {
    _categoriesRepository = CategoriesRepository();
    _categoriesController = StreamController<Response<Categories>>();

    fetchCategories();
  }

  fetchCategories() async {
    categoriesSink.add(
      Response.loading('Loading categories...'),
    );
    try {
      Categories categories = await _categoriesRepository.getCategories();
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
