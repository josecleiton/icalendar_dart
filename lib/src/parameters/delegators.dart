import '../calendar_parameter.dart';
import '../calendar_parameter_value_list.dart';
import '../values/calendar_user_address.dart';

/// RFC2445 Section 4.2.4
class DelegatorsParameter extends CalendarParameter<
    CalendarParameterValueList<CalendarUserAddressParameterValue>> {
  DelegatorsParameter(List<String> emails)
      : super(
          "DELEGATED-FROM",
          CalendarParameterValueList(
            emails.map((e) => CalendarUserAddressParameterValue(e)).toList(),
          ),
        );
}
