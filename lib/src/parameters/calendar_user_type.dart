import '../calendar_parameter.dart';
import '../values/text.dart';

/// RFC2445 Section 4.2.3
class CalendarUserTypeParameter extends CalendarParameter<TextParameterValue> {
  CalendarUserTypeParameter(CalendarUserType type)
      : super(
          "CUTYPE",
          TextParameterValue(type.value),
        );
}

enum CalendarUserType {
  individual,
  group,
  resource,
  room,
  unknown,
}

extension CalendarUserTypeStringValue on CalendarUserType {
  String get value {
    switch (this) {
      case CalendarUserType.individual:
        return "INDIVIDUAL";
      case CalendarUserType.group:
        return "GROUP";
      case CalendarUserType.resource:
        return "RESOURCE";
      case CalendarUserType.room:
        return "ROOM";
      case CalendarUserType.unknown:
        return "UNKNOWN";
    }
  }
}
