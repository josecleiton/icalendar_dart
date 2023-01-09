import 'calendar_parameter.dart';
import 'calendar_parameter_value.dart';
import 'calendar_value.dart';

abstract class CalendarProperty<ValueType extends CalendarValue> {
  final String propertyName;
  final ValueType? value;

  CalendarProperty(this.propertyName, this.value);

  List<CalendarParameter<CalendarParameterValue>> getParameters();

  @override
  String toString() {
    final res = StringBuffer();
    res.writeAll([
      propertyName.toUpperCase(),
      ...getParameters(),
      ...(value == null ? [] : value!.getInlineParameters())
    ], ";");
    if (value != null) {
      res.write(":");
      res.write(value!);
    }
    return res.toString();
  }

  T deserialize<T extends CalendarProperty>(String ical);
}
