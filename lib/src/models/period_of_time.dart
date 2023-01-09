class PeriodOfTime {
  final DateTime start;
  final DateTime? end;
  final Duration? duration;

  PeriodOfTime({
    required this.start,
    this.end,
    this.duration,
  });

  @override
  bool operator ==(Object other) {
    return other is PeriodOfTime &&
        start == other.start &&
        end == other.end &&
        duration == other.duration;
  }

  @override
  int get hashCode => Object.hash(start, end, duration);
}
