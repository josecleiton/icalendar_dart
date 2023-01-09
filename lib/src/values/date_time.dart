import '../calendar_parameter.dart';
import '../calendar_parameter_value.dart';
import '../calendar_value.dart';
import 'date.dart';
import 'time.dart';

const _defaultFixed = true;

/// RFC2445 Section 4.3.5
class DateTimeValue extends CalendarValue<DateTime> {
  /// If set to [true], will fix the time
  /// value to either the supplied [timeZoneIdentifier]
  /// or to the `UTC` timezone by default
  ///
  /// Defaults to [true]
  final bool fixed;

  /// The [tzId] value of a [TimeZoneComponent]
  /// located inside the current calendar
  final String? timeZoneIdentifier;

  late DateValue _dateValue;
  late TimeValue _timeValue;

  DateTimeValue(
    DateTime value, {
    this.fixed = _defaultFixed,
    this.timeZoneIdentifier,
  }) : super(value, ValueType.dateTime) {
    _dateValue = DateValue(value);
    _timeValue = TimeValue(
      value,
      fixed: fixed,
      timeZoneIdentifier: timeZoneIdentifier,
    );
  }

  @override
  String sanitizeToString() {
    return "${_dateValue}T$_timeValue";
  }

  @override
  List<CalendarParameter> getInlineParameters() {
    return [
      ..._dateValue.getInlineParameters(),
      ..._timeValue.getInlineParameters()
    ];
  }
}

class DateTimeParameterValue extends DateTimeValue with CalendarParameterValue {
  DateTimeParameterValue(
    DateTime value, {
    bool fixed = _defaultFixed,
    String? timeZoneIdentifier,
  }) : super(
          value,
          fixed: fixed,
          timeZoneIdentifier: timeZoneIdentifier,
        );
}
