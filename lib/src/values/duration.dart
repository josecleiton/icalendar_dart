import '../calendar_parameter_value.dart';
import '../calendar_value.dart';

/// RFC2445 Section 4.3.6
class DurationValue extends CalendarValue<Duration> {
  /// Will produce a duration value that only
  /// accounts for the number of weeks.
  ///
  /// Ex: `Duration(days: 8, hours: 7, minutes: 2) == "P1W"`
  final bool inWeeks;

  DurationValue(
    Duration value, {
    this.inWeeks = false,
  }) : super(value, ValueType.duration);

  @override
  String sanitizeToString() {
    final res = StringBuffer("${value.isNegative ? "-" : ""}P");
    final absDuration = value.abs();

    if (inWeeks) {
      final weeks = (absDuration.inDays / 7).floor();
      res.write("${weeks}W");
      return res.toString();
    }

    if (absDuration.inDays > 0) res.write("${absDuration.inDays}D");

    final hours = absDuration.inHours - (absDuration.inDays * 24);
    final minutes = absDuration.inMinutes - (absDuration.inHours * 60);
    final seconds = absDuration.inSeconds - (absDuration.inMinutes * 60);

    res.write("T${hours}H${minutes}M${seconds}S");

    return res.toString();
  }
}

class DurationParameterValue extends DurationValue with CalendarParameterValue {
  DurationParameterValue(Duration value) : super(value);
}
