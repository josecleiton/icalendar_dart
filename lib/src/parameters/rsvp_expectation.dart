import '../calendar_parameter.dart';
import '../values/boolean.dart';

/// RFC2445 Section 4.2.17
class RSVPExpectationParameter
    extends CalendarParameter<BooleanParameterValue> {
  RSVPExpectationParameter(bool rsvp)
      : super("RSVP", BooleanParameterValue(rsvp));
}
