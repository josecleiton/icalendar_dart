import 'package:intl/intl.dart';

import '../calendar_value.dart';

/// RFC2445 Section 4.3.14
class UTCOffsetValue extends CalendarValue<DateTime> {
  UTCOffsetValue(DateTime value) : super(value, ValueType.utcOffset);

  @override
  String sanitizeToString() {
    return DateFormat("Z").format(value);
  }
}
