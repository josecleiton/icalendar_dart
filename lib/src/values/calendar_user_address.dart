import 'package:email_validator/email_validator.dart';

import '../calendar_parameter_value.dart';
import '../calendar_value.dart';

/// RFC2445 Section 4.3.3
class CalendarUserAddressValue extends CalendarValue<String> {
  CalendarUserAddressValue(String email) : super(email, ValueType.calAddress);

  @override
  void validate() {
    assert(EmailValidator.validate(value), "Email is invalid");
  }

  @override
  String sanitizeToString() {
    return "MAILTO:${value.trim().toLowerCase()}";
  }
}

class CalendarUserAddressParameterValue extends CalendarUserAddressValue
    with CalendarParameterValue {
  CalendarUserAddressParameterValue(String email) : super(email);
}
