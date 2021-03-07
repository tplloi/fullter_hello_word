import 'package:logger/logger.dart';

class LLog {
  static final LLog _singleton = new LLog._internal();

  LLog._internal();

  static LLog get instance => _singleton;

  var logger = Logger(
    printer: PrettyPrinter(),
  );

  var loggerNoStack = Logger(
    printer: PrettyPrinter(methodCount: 0),
  );
}
