import '../calendar_parameter.dart';
import '../calendar_parameter_value.dart';
import '../calendar_property.dart';
import '../calendar_value.dart';
import '../parameters/free_busy_time_type.dart';
import '../values/period_of_time.dart';

/// RFC2445 Section 4.8.2.6
class FreeBusyTimeProperty extends CalendarProperty<PeriodOfTimeValue> {
  final FreeBusyTimeType? type;

  FreeBusyTimeProperty({
    required DateTime start,
    DateTime? end,
    Duration? duration,
    this.type,
  }) : super(
          "FREEBUSY",
          PeriodOfTimeValue(
            start: start,
            end: end,
            duration: duration,
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
      if (type != null) FreeBusyTimeTypeParameter(type!),
    ];
  }
}
