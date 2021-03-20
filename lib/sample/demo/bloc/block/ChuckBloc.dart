import 'dart:async';

import 'package:hello_word/sample/demo/bloc/repository/Repository.dart';

import '../model/Chuck.dart';
import '../service/AppResponse.dart';

class ChuckBloc {
  Repository _repository;
  StreamController _chuckController;

  StreamSink<AppResponse<Chuck>> get chuckSink => _chuckController.sink;

  Stream<AppResponse<Chuck>> get chuckStream => _chuckController.stream;

  ChuckBloc(String category) {
    _repository = Repository();
    _chuckController = StreamController<AppResponse<Chuck>>();
    getChuck(category);
  }

  getChuck(String category) async {
    chuckSink.add(
      AppResponse.loading("Loading chuck...\nPlease wait..."),
    );
    try {
      Chuck chuck = await _repository.getChuck(category);
      chuckSink.add(
        AppResponse.completed(chuck),
      );
    } catch (e) {
      chuckSink.add(
        AppResponse.error(e.toString()),
      );
      print(e);
    }
  }

  dispose() {
    _chuckController?.close();
  }
}
