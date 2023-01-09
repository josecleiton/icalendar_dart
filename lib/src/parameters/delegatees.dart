import '../calendar_parameter.dart';
import '../calendar_parameter_value_list.dart';
import '../values/calendar_user_address.dart';

/// RFC2445 Section 4.2.5
class DelegateesParameter extends CalendarParameter<
    CalendarParameterValueList<CalendarUserAddressParameterValue>> {
  DelegateesParameter(List<String> emails)
      : super(
          "DELEGATED-TO",
          CalendarParameterValueList(
            emails.map((e) => CalendarUserAddressParameterValue(e)).toList(),
          ),
        );
}
