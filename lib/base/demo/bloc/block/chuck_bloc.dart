import 'dart:async';

import 'package:hello_word/base/demo/bloc/repository/chuck_repository.dart';

import '../model/chuck.dart';
import '../response.dart';

class ChuckBloc {
  ChuckRepository _chuckRepository;
  StreamController _chuckController;

  StreamSink<Response<Chuck>> get chuckSink => _chuckController.sink;

  Stream<Response<Chuck>> get chuckStream => _chuckController.stream;

  ChuckBloc(String category) {
    _chuckRepository = ChuckRepository();
    _chuckController = StreamController<Response<Chuck>>();
    getChuck(category);
  }

  getChuck(String category) async {
    chuckSink.add(
      Response.loading("Loading chuck...\nPlease wait..."),
    );
    try {
      Chuck chuck = await _chuckRepository.getChuck(category);
      chuckSink.add(
        Response.completed(chuck),
      );
    } catch (e) {
      chuckSink.add(
        Response.error(e.toString()),
      );
      print(e);
    }
  }

  dispose() {
    _chuckController?.close();
  }
}
