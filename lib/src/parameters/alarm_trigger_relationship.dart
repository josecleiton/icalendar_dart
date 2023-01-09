import '../calendar_parameter.dart';
import '../values/text.dart';

/// RFC2445 Section 4.2.14
class AlarmTriggerRelationshipParameter
    extends CalendarParameter<TextParameterValue> {
  AlarmTriggerRelationshipParameter(AlarmTriggerRelationshipType type)
      : super("RELATED", TextParameterValue(type.value));
}

enum AlarmTriggerRelationshipType { start, end }

extension AlarmTriggerRelationshipTypeStringValue
    on AlarmTriggerRelationshipType {
  String get value {
    switch (this) {
      case AlarmTriggerRelationshipType.start:
        return "START";
      case AlarmTriggerRelationshipType.end:
        return "END";
    }
  }
}
