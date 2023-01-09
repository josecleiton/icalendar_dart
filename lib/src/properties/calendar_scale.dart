import '../calendar_parameter.dart';
import '../calendar_parameter_value.dart';
import '../calendar_property.dart';
import '../calendar_value.dart';
import '../values/text.dart';

/// RFC2445 Section 4.7.1
class CalendarScaleProperty extends CalendarProperty<TextValue> {
  CalendarScaleProperty(CalendarScaleType type)
      : super("CALSCALE", TextValue(type.value));

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

enum CalendarScaleType {
  gregorian,
}

extension CalendarScaleTypeStringValue on CalendarScaleType {
  String get value {
    switch (this) {
      case CalendarScaleType.gregorian:
        return "GREGORIAN";
    }
  }
}
