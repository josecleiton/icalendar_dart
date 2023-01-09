import '../calendar_parameter.dart';
import '../calendar_parameter_value.dart';
import '../calendar_property.dart';
import '../calendar_value.dart';
import '../values/uri.dart';

/// RFC2445 Section 4.8.4.6
class URLProperty extends CalendarProperty<UriValue> {
  URLProperty(Uri value) : super("URL", UriValue(value));

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
