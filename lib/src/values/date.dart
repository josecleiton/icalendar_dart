import 'package:intl/intl.dart';

import '../calendar_parameter_value.dart';
import '../calendar_value.dart';

/// RFC2445 Section 4.3.4
class DateValue extends CalendarValue<DateTime> {
  DateValue(DateTime value) : super(value, ValueType.date);

  @override
  String sanitizeToString() {
    return DateFormat("yMMdd").format(value);
  }
}

class DateParameterValue extends DateValue with CalendarParameterValue {
  DateParameterValue(DateTime value) : super(value);
}
