import '../calendar_parameter.dart';
import '../calendar_parameter_value.dart';
import '../calendar_value.dart';
import '../models/period_of_time.dart';
import 'date_time.dart';
import 'duration.dart';

const _defaultFixed = true;
const _defaultDurationInWeeks = false;

/// RFC2445 Section 4.3.9
class PeriodOfTimeValue extends CalendarValue<PeriodOfTime> {
  final DateTime start;
  final DateTime? end;
  final Duration? duration;

  /// If set to [true], will fix the time
  /// value to either the supplied [timeZoneIdentifier]
  /// or to the `UTC` timezone by default
  ///
  /// Defaults to [true]
  final bool fixed;

  /// The [tzId] value of a [TimeZoneComponent]
  /// located inside the current calendar
  final String? timeZoneIdentifier;

  /// Will produce a duration value that only
  /// accounts for the number of weeks.
  /// (Only relevant if supplying [duration])
  ///
  /// Ex: `Duration(days: 8, hours: 7, minutes: 2) == "P1W"`
  final bool durationInWeeks;

  late DateTimeValue _startDateTime;
  late DateTimeValue? _endDateTime;
  late DurationValue? _duration;

  PeriodOfTimeValue({
    required this.start,
    this.end,
    this.duration,
    this.timeZoneIdentifier,
    this.fixed = _defaultFixed,
    this.durationInWeeks = _defaultDurationInWeeks,
  }) : super(
            PeriodOfTime(
              start: start,
              end: end,
              duration: duration,
            ),
            ValueType.period) {
    _startDateTime = DateTimeValue(
      start,
      fixed: fixed,
      timeZoneIdentifier: timeZoneIdentifier,
    );

    if (duration != null) {
      _duration = DurationValue(
        duration!,
        inWeeks: durationInWeeks,
      );
    }

    if (end != null) {
      _endDateTime = DateTimeValue(
        end!,
        fixed: fixed,
        timeZoneIdentifier: timeZoneIdentifier,
      );
    }
  }

  @override
  void validate() {
    assert(
      end != null || duration != null,
      "Must supply either [end] or [duration]",
    );

    if (end != null) {
      assert(
        end!.isBefore(start) || end!.isAtSameMomentAs(start),
        "[end] must be after [start]",
      );
    }

    if (duration != null) {
      assert(duration!.isNegative, "[duration] cannot be negative");
    }

    super.validate();
  }

  @override
  String sanitizeToString() {
    return "$_startDateTime/${end == null ? _duration! : _endDateTime!}";
  }

  @override
  List<CalendarParameter> getInlineParameters() {
    return [
      ..._startDateTime.getInlineParameters(),
      ...(_duration?.getInlineParameters() ?? []),
    ];
  }
}

class PeriodOfTimeParameterValue extends PeriodOfTimeValue
    with CalendarParameterValue {
  PeriodOfTimeParameterValue({
    required DateTime start,
    DateTime? end,
    Duration? duration,
    String? timeZoneIdentifier,
    bool fixed = _defaultFixed,
    bool durationInWeeks = _defaultDurationInWeeks,
  }) : super(
          start: start,
          end: end,
          duration: duration,
          timeZoneIdentifier: timeZoneIdentifier,
          fixed: fixed,
          durationInWeeks: durationInWeeks,
        );
}
