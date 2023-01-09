import '../calendar_parameter.dart';
import '../calendar_parameter_value.dart';
import '../calendar_property.dart';
import '../calendar_value.dart';
import '../parameters/alarm_trigger_relationship.dart';
import '../parameters/value_data_type.dart';
import '../values/date_time.dart';
import '../values/duration.dart';

/// RFC2445 Section 4.8.6.3
class DateTimeTriggerProperty extends CalendarProperty<DateTimeValue> {
  DateTimeTriggerProperty(DateTime value)
      : super("TRIGGER", DateTimeValue(value));

  @override
  T deserialize<T extends CalendarProperty<CalendarValue>>(String ical) {
    // TODO: implement deserialize
    throw UnimplementedError();
  }

  @override
  List<CalendarParameter<CalendarParameterValue>> getParameters() {
    return [
      ValueDataTypeParameter(ValueType.dateTime),
    ];
  }
}

/// RFC2445 Section 4.8.6.3
class DurationTriggerProperty extends CalendarProperty<DurationValue> {
  final AlarmTriggerRelationshipType? relationshipType;

  DurationTriggerProperty(
    Duration value, {
    this.relationshipType,
  }) : super("TRIGGER", DurationValue(value));

  @override
  T deserialize<T extends CalendarProperty<CalendarValue>>(String ical) {
    // TODO: implement deserialize
    throw UnimplementedError();
  }

  @override
  List<CalendarParameter<CalendarParameterValue>> getParameters() {
    return [
      ValueDataTypeParameter(ValueType.duration),
      if (relationshipType != null)
        AlarmTriggerRelationshipParameter(relationshipType!),
    ];
  }
}
