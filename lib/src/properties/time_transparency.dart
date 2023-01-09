import '../calendar_parameter.dart';
import '../calendar_parameter_value.dart';
import '../calendar_property.dart';
import '../calendar_value.dart';
import '../values/text.dart';

/// RFC2445 Section 4.8.2.7
class TimeTransparencyProperty extends CalendarProperty<TextValue> {
  TimeTransparencyProperty(TimeTransparencyType type)
      : super("TRANSP", TextValue(type.value));

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

enum TimeTransparencyType {
  opaque,
  transparent,
}

extension TimeTransparencyTypeStringValue on TimeTransparencyType {
  String get value {
    switch (this) {
      case TimeTransparencyType.opaque:
        return "OPAQUE";
      case TimeTransparencyType.transparent:
        return "TRANSPARENT";
    }
  }
}
