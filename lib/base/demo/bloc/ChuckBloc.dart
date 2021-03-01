import 'dart:async';

import 'ChuckRepository.dart';
import 'model/chuck.dart';
import 'response.dart';

class ChuckBloc {
  ChuckRepository _chuckRepository;
  StreamController _chuckDataController;

  StreamSink<Response<Chuck>> get chuckDataSink =>
      _chuckDataController.sink;

  Stream<Response<Chuck>> get chuckDataStream =>
      _chuckDataController.stream;

  ChuckBloc(String category) {
    _chuckDataController = StreamController<Response<Chuck>>();
    _chuckRepository = ChuckRepository();
    fetchChuckyJoke(category);
  }

  fetchChuckyJoke(String category) async {
    chuckDataSink.add(Response.loading('Getting A Chucky Joke!'));
    try {
      Chuck chuckJoke = await _chuckRepository.fetchChuckJoke(category);
      chuckDataSink.add(Response.completed(chuckJoke));
    } catch (e) {
      chuckDataSink.add(Response.error(e.toString()));
      print(e);
    }
  }

  dispose() {
    _chuckDataController?.close();
  }
}
