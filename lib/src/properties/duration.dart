import '../calendar_parameter.dart';
import '../calendar_parameter_value.dart';
import '../calendar_property.dart';
import '../calendar_value.dart';
import '../values/duration.dart';

/// RFC2445 Section 4.8.2.5
class DurationProperty extends CalendarProperty<DurationValue> {
  DurationProperty(Duration value)
      : assert(
          !value.isNegative,
          "Duration must be positive",
        ),
        super("DURATION", DurationValue(value));

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
