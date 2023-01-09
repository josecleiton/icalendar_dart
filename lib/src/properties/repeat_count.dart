import '../calendar_parameter.dart';
import '../calendar_parameter_value.dart';
import '../calendar_property.dart';
import '../calendar_value.dart';
import '../values/integer.dart';

/// RFC2445 Section 4.8.6.2
class RepeatCountProperty extends CalendarProperty<IntegerValue> {
  RepeatCountProperty(int value)
      : assert(value >= 0, "value must be greater than 0"),
        super("REPEAT", IntegerValue(value));

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
