import '../calendar_parameter.dart';
import '../calendar_parameter_value.dart';
import '../calendar_property.dart';
import '../calendar_value.dart';
import '../values/text.dart';

/// RFC2445 Section 4.8.1.3
class ClassificationProperty extends CalendarProperty<TextValue> {
  ClassificationProperty(ClassificationType type)
      : super(
          "CLASS",
          TextValue(type.value),
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

enum ClassificationType {
  public,
  private,
  confidential,
}

extension ClassificationTypeStringValue on ClassificationType {
  String get value {
    switch (this) {
      case ClassificationType.public:
        return "PUBLIC";
      case ClassificationType.private:
        return "PRIVATE";
      case ClassificationType.confidential:
        return "CONFIDENTIAL";
    }
  }
}
