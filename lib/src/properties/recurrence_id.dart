import '../calendar_parameter.dart';
import '../calendar_parameter_value.dart';
import '../calendar_property.dart';
import '../calendar_value.dart';
import '../parameters/recurrence_identifier_range.dart';
import '../parameters/time_zone_identifier.dart';
import '../parameters/value_data_type.dart';
import '../values/date.dart';
import '../values/date_time.dart';

/// RFC2445 Section 4.8.4.4
class RecurrenceIdProperty extends CalendarProperty<CalendarValue<DateTime>> {
  /// Can either be date or dateTime
  ///
  /// Defaults to dateTime
  final ValueType valueType;

  final String? timeZoneIdentifier;
  final RecurrenceIdentifierRangeType? recurrenceIdentifierRangeType;

  RecurrenceIdProperty(
    DateTime value, {
    this.valueType = ValueType.dateTime,
    this.timeZoneIdentifier,
    this.recurrenceIdentifierRangeType,
  })  : assert(
          valueType == ValueType.date || valueType == ValueType.dateTime,
          "valueType must either be date or dateTime",
        ),
        super(
          "RECURRENCE-ID",
          valueType == ValueType.date ? DateValue(value) : DateTimeValue(value),
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
      if (recurrenceIdentifierRangeType != null)
        RecurrenceIdentifierRangeParameter(recurrenceIdentifierRangeType!)
    ];
  }
}
