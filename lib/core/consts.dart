import 'package:intl/intl.dart';

extension DateTimeX on DateTime {
  String get dayWithWeekday => DateFormat('EEE, M').format(this);

  String get convertedDateTime => "${year.toString()}-${month.toString().padLeft(2, '0')}-${day.toString().padLeft(2, '0')} ${hour.toString().padLeft(2, '0')}:${minute.toString().padLeft(2, '0')}";
}
