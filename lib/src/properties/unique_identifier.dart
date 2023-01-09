import 'package:nanoid/nanoid.dart';

import '../calendar_parameter.dart';
import '../calendar_parameter_value.dart';
import '../calendar_property.dart';
import '../calendar_value.dart';
import '../values/text.dart';

/// RFC2445 Section 4.8.4.7
class UniqueIdentifierProperty extends CalendarProperty<TextValue> {
  UniqueIdentifierProperty({
    String? value,
  }) : super("UID", TextValue(value ?? nanoid(32)));

  @override
  T deserialize<T extends CalendarProperty<CalendarValue>>(String ical) {
    // TODO: implement deserialize
    throw UnimplementedError();
  }

  @override
  List<CalendarParameter<CalendarParameterValue>> getParameters() {
    return [];
  }
}
