import '../calendar_parameter.dart';
import '../values/text.dart';

/// RFC2445 Section 4.2.16
class ParticipationRoleParameter extends CalendarParameter<TextParameterValue> {
  ParticipationRoleParameter(ParticipationRoleType type)
      : super("ROLE", TextParameterValue(type.value));
}

enum ParticipationRoleType {
  chair,
  reqParticipant,
  optParticipant,
  nonParticipant,
}

extension ParticipationRoleTypeStringValue on ParticipationRoleType {
  String get value {
    switch (this) {
      case ParticipationRoleType.chair:
        return "CHAIR";
      case ParticipationRoleType.reqParticipant:
        return "REQ-PARTICIPANT";
      case ParticipationRoleType.optParticipant:
        return "OPT-PARTICIPANT";
      case ParticipationRoleType.nonParticipant:
        return "NON-PARTICIPANT";
    }
  }
}
