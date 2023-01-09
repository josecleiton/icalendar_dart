import '../calendar_parameter.dart';
import '../calendar_parameter_value.dart';
import '../calendar_property.dart';
import '../calendar_value.dart';
import '../values/utc_offset.dart';

/// RFC2445 Section 4.8.3.4
class TimeZoneOffsetToProperty extends CalendarProperty<UTCOffsetValue> {
  TimeZoneOffsetToProperty(DateTime value)
      : super(
          "TZOFFSETTO",
          UTCOffsetValue(value),
        );

  @override
  T deserialize<T extends CalendarProperty<CalendarValue>>(String ical) {
    // TODO: implement deserialize
    throw UnimplementedError();
  }

  @override
  List<CalendarParameter<CalendarParameterValue>> getParameters() {
    return [];
  }
}
