import '../calendar_parameter.dart';
import '../calendar_parameter_value_list.dart';
import '../values/calendar_user_address.dart';

/// RFC2445 Section 4.2.11
class GroupOrListMembershipParameter extends CalendarParameter<
    CalendarParameterValueList<CalendarUserAddressParameterValue>> {
  GroupOrListMembershipParameter(List<String> emails)
      : super(
          "MEMBER",
          CalendarParameterValueList(
            emails.map((e) => CalendarUserAddressParameterValue(e)).toList(),
          ),
        );
}
