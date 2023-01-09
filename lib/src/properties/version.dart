import '../calendar_parameter.dart';
import '../calendar_parameter_value.dart';
import '../calendar_property.dart';
import '../calendar_value.dart';
import '../values/text.dart';

/// RFC2445 Section 4.7.4
class VersionProperty extends CalendarProperty<TextValue> {
  VersionProperty({
    String minVersion = "2.0",
    String? maxVersion,
  }) : super(
          "VERSION",
          TextValue(
            "$minVersion${maxVersion == null ? "" : ";$maxVersion"}",
          ),
        );

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
