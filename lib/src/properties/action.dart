import '../calendar_parameter.dart';
import '../calendar_parameter_value.dart';
import '../calendar_property.dart';
import '../calendar_value.dart';
import '../values/text.dart';

/// RFC2445 Section 4.8.6.1
class ActionProperty extends CalendarProperty<TextValue> {
  ActionProperty(ActionType type) : super("ACTION", TextValue(type.value));

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

enum ActionType {
  audio,
  display,
  email,
  procedure,
}

extension ActionTypeStringValue on ActionType {
  String get value {
    switch (this) {
      case ActionType.audio:
        return "AUDIO";
      case ActionType.display:
        return "DISPLAY";
      case ActionType.email:
        return "EMAIL";
      case ActionType.procedure:
        return "PROCEDURE";
    }
  }
}
