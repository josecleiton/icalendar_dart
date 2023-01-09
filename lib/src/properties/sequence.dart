import '../calendar_parameter.dart';
import '../calendar_parameter_value.dart';
import '../calendar_property.dart';
import '../calendar_value.dart';
import '../values/integer.dart';

/// RFC2445 Section 4.8.7.4
class SequenceProperty extends CalendarProperty<IntegerValue> {
  SequenceProperty(int value)
      : assert(value >= 0, "value must be positive"),
        super("SEQUENCE", IntegerValue(value));

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
