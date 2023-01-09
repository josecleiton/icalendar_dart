import '../calendar_parameter.dart';
import '../calendar_parameter_value.dart';
import '../calendar_property.dart';
import '../calendar_value.dart';
import '../values/date_time.dart';

/// RFC2445 Section 4.8.2.1
class DateTimeCompletedProperty extends CalendarProperty<DateTimeValue> {
  DateTimeCompletedProperty(DateTime value)
      : super("COMPLETED", DateTimeValue(value));

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
