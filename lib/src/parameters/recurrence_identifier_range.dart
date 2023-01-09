import '../calendar_parameter.dart';
import '../values/text.dart';

/// RFC2445 Section 4.2.13
class RecurrenceIdentifierRangeParameter
    extends CalendarParameter<TextParameterValue> {
  RecurrenceIdentifierRangeParameter(RecurrenceIdentifierRangeType type)
      : super("RANGE", TextParameterValue(type.value));
}

enum RecurrenceIdentifierRangeType {
  thisAndPrior,
  thisAndFuture,
}

extension RecurrenceIdentifierRangeTypeStringValue
    on RecurrenceIdentifierRangeType {
  String get value {
    switch (this) {
      case RecurrenceIdentifierRangeType.thisAndPrior:
        return "THISANDPRIOR";
      case RecurrenceIdentifierRangeType.thisAndFuture:
        return "THISANDFUTURE";
    }
  }
}
