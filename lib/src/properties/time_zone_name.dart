import 'package:intl/locale.dart';

import '../calendar_parameter.dart';
import '../calendar_parameter_value.dart';
import '../calendar_property.dart';
import '../calendar_value.dart';
import '../parameters/language.dart';
import '../values/text.dart';

/// RFC2445 Section 4.8.3.2
class TimeZoneNameProperty extends CalendarProperty<TextValue> {
  final Locale? locale;

  TimeZoneNameProperty(
    String name, {
    this.locale,
  }) : super("TZNAME", TextValue(name));

  @override
  T deserialize<T extends CalendarProperty<CalendarValue>>(String ical) {
    // TODO: implement deserialize
    throw UnimplementedError();
  }

  @override
  List<CalendarParameter<CalendarParameterValue>> getParameters() {
    return [
      if (locale != null) LanguageParameter(locale!),
    ];
  }
}
