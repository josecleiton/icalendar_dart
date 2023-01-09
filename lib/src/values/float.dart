import '../calendar_parameter_value.dart';
import '../calendar_value.dart';

/// RFC2445 Section 4.3.7
class FloatValue extends CalendarValue<double> {
  FloatValue(double value) : super(value, ValueType.float);
}

class FloatParameterValue extends FloatValue with CalendarParameterValue {
  FloatParameterValue(double value) : super(value);
}