import '../calendar_parameter.dart';
import '../values/calendar_user_address.dart';

/// RFC2445 Section 4.2.18
class SentByParameter
    extends CalendarParameter<CalendarUserAddressParameterValue> {
  SentByParameter(String email)
      : super("SENT-BY", CalendarUserAddressParameterValue(email));
}
