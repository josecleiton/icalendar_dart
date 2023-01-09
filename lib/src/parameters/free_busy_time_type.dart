import '../calendar_parameter.dart';
import '../values/text.dart';

/// RFC2445 Section 4.2.9
class FreeBusyTimeTypeParameter extends CalendarParameter<TextParameterValue> {
  FreeBusyTimeTypeParameter(FreeBusyTimeType type)
      : super("FBTYPE", TextParameterValue(type.value));
}

enum FreeBusyTimeType {
  free,
  busy,
  busyUnavailable,
  busyTentative,
}

extension FreeBusyTimeTypeStringValue on FreeBusyTimeType {
  String get value {
    switch (this) {
      case FreeBusyTimeType.free:
        return "FREE";
      case FreeBusyTimeType.busy:
        return "BUSY";
      case FreeBusyTimeType.busyUnavailable:
        return "BUSY-UNAVAILABLE";
      case FreeBusyTimeType.busyTentative:
        return "BUSY-TENTATIVE";
    }
  }
}
