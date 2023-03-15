import 'package:intl/intl.dart';

extension DateTimeFormat on DateTime {
  // returns format May 1, 2023
  String fullDate() {
    return DateFormat.yMMMMd('en_US').format(
        DateTime.fromMicrosecondsSinceEpoch((this).microsecondsSinceEpoch));
  }
}
