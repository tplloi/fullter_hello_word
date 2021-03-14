import 'package:intl/intl.dart';

class TimeUtils {
  static const String FORMAT_1 = "dd/MM/yyyy HH:MM:ss";

  static String convertFromMillisecondsSinceEpoch(
      int millisecondsSinceEpoch, String patter) {
    DateTime date =
        new DateTime.fromMillisecondsSinceEpoch(millisecondsSinceEpoch);
    var format = new DateFormat(patter);
    var dateString = format.format(date);
    return dateString;
  }
}
