import 'package:intl/intl.dart';

class TimeUtils {
  static String convertFromMillisecondsSinceEpoch(
      int millisecondsSinceEpoch, String patter) {
    DateTime date =
        new DateTime.fromMillisecondsSinceEpoch(millisecondsSinceEpoch);
    var format = new DateFormat(patter);
    var dateString = format.format(date);
    return dateString;
  }
}
