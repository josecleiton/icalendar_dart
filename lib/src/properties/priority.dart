import '../calendar_parameter.dart';
import '../calendar_parameter_value.dart';
import '../calendar_property.dart';
import '../calendar_value.dart';
import '../values/integer.dart';

/// RFC2445 Section 4.8.1.9
class PriorityProperty extends CalendarProperty<IntegerValue> {
  PriorityProperty(int priority)
      : assert(
          priority >= 0 && priority <= 9,
          "Priority must be a positive integer between 0 and 9",
        ),
        super(
          "PRIORITY",
          IntegerValue(priority),
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
