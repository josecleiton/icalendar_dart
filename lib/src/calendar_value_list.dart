import 'calendar_parameter.dart';
import 'calendar_value.dart';

class CalendarValueList<T extends CalendarValue>
    extends CalendarValue<List<T>> {
  final List<T> values;

  CalendarValueList(this.values)
      : assert(values.isNotEmpty),
        super(values, values[0].type);

  @override
  String sanitizeToString() {
    return values.join(",");
  }

  @override
  List<CalendarParameter> getInlineParameters() {
    final inlineParams = values
        .map((e) => e.getInlineParameters())
        .expand((element) => element)
        .toList();
    assert(
      inlineParams.length ==
          inlineParams.map((e) => e.parameterName.toUpperCase()).toSet().length,
      "Found conflicting inline parameters in list of values",
    );
    return inlineParams;
  }

  T operator [](int index) {
    return values[index];
  }

  int get length => values.length;
}
