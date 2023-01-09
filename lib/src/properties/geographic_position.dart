import '../calendar_parameter.dart';
import '../calendar_parameter_value.dart';
import '../calendar_property.dart';
import '../calendar_value.dart';
import '../values/float.dart';
import '../values/text.dart';

/// RFC2445 Section 4.8.1.6
class GeographicPositionProperty extends CalendarProperty<TextValue> {
  GeographicPositionProperty({
    required double lat,
    required double long,
  }) : super(
          "GEO",
          TextValue(
            "${FloatValue(lat)};${FloatValue(long)}",
            escapeCharacters: false,
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
