import '../calendar_parameter.dart';
import '../values/text.dart';

/// RFC2445 Section 4.2.19
class TimeZoneIdentifierParameter
    extends CalendarParameter<TextParameterValue> {
  TimeZoneIdentifierParameter(
    String timeZoneIdentifier,
  ) : super("TZID", TextParameterValue(timeZoneIdentifier));
}
