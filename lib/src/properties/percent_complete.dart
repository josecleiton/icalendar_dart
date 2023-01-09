import '../calendar_parameter.dart';
import '../calendar_parameter_value.dart';
import '../calendar_property.dart';
import '../calendar_value.dart';
import '../values/integer.dart';

/// RFC2445 Section 4.8.1.8
class PercentCompleteProperty extends CalendarProperty<IntegerValue> {
  PercentCompleteProperty(int percent)
      : assert(
          percent >= 0 && percent <= 100,
          "Percent must be a positive integer between 0 and 100",
        ),
        super("PERCENT-COMPLETE", IntegerValue(percent));

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
