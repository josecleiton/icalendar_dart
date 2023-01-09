import '../calendar_parameter.dart';
import '../calendar_value.dart';
import '../values/text.dart';

/// RFC2445 Section 4.2.18
class ValueDataTypeParameter extends CalendarParameter<TextParameterValue> {
  ValueDataTypeParameter(ValueType type)
      : super("VALUE", TextParameterValue(type.value));
}
