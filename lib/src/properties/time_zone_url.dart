import '../calendar_parameter.dart';
import '../calendar_parameter_value.dart';
import '../calendar_property.dart';
import '../calendar_value.dart';
import '../values/uri.dart';

/// RFC2445 Section 4.8.3.5
class TimeZoneUrlProperty extends CalendarProperty<UriValue> {
  TimeZoneUrlProperty(Uri value) : super("TZURL", UriValue(value));

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
