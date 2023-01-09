import '../calendar_parameter.dart';
import '../calendar_parameter_value.dart';
import '../calendar_property.dart';
import '../calendar_value.dart';
import '../calendar_value_list.dart';
import '../parameters/time_zone_identifier.dart';
import '../parameters/value_data_type.dart';
import '../values/date.dart';
import '../values/date_time.dart';

/// RFC2445 Section 4.8.5.3
class RecurrenceDateTimesProperty
    extends CalendarProperty<CalendarValueList<CalendarValue<DateTime>>> {
  /// Can either be date or dateTime
  ///
  /// Defaults to dateTime
  final ValueType valueType;

  final String? timeZoneIdentifier;

  RecurrenceDateTimesProperty(
    List<DateTime> values, {
    this.valueType = ValueType.dateTime,
    this.timeZoneIdentifier,
  })  : assert(
          valueType == ValueType.date || valueType == ValueType.dateTime,
          "valueType must either be date or dateTime",
        ),
        super(
          "RDATE",
          CalendarValueList(
            values
                .map((e) => valueType == ValueType.date
                    ? DateValue(e)
                    : DateTimeValue(e))
                .toList(),
          ),
        );

  @override
  T deserialize<T extends CalendarProperty<CalendarValue>>(String ical) {
    // TODO: implement deserialize
    throw UnimplementedError();
  }

  @override
  List<CalendarParameter<CalendarParameterValue>> getParameters() {
    return [
      ValueDataTypeParameter(valueType),
      if (timeZoneIdentifier != null)
        TimeZoneIdentifierParameter(timeZoneIdentifier!),
    ];
  }
}