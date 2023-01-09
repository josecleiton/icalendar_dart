import '../calendar_parameter.dart';
import '../values/text.dart';

/// RFC2445 Section 4.2.12
class ParticipationStatusParameter
    extends CalendarParameter<TextParameterValue> {
  ParticipationStatusParameter(ParticipationStatusType type)
      : super("PARTSTAT", TextParameterValue(type.value));
}

enum ParticipationStatusType {
  needsAction,
  accepted,
  declined,
  tentative,
  delegated,
  completed,
  inProcess,
}

extension ParticipationStatusTypeStringValue on ParticipationStatusType {
  String get value {
    switch (this) {
      case ParticipationStatusType.needsAction:
        return "NEEDS-ACTION";
      case ParticipationStatusType.accepted:
        return "ACCEPTED";
      case ParticipationStatusType.declined:
        return "DECLINED";
      case ParticipationStatusType.tentative:
        return "TENTATIVE";
      case ParticipationStatusType.delegated:
        return "DELEGATED";
      case ParticipationStatusType.completed:
        return "COMPLETED";
      case ParticipationStatusType.inProcess:
        return "IN-PROCESS";
    }
  }
}
