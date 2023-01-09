import 'calendar_parameter_value.dart';

abstract class CalendarParameter<ValueType extends CalendarParameterValue> {
  final String parameterName;
  final ValueType? value;

  CalendarParameter(this.parameterName, this.value);

  @override
  String toString() {
    final res = StringBuffer();
    res.write(parameterName.toUpperCase());
    if (value != null) {
      res.write("=");
      res.write(value!);
    }
    return res.toString();
  }
}
