import '../calendar_parameter.dart';
import '../calendar_parameter_value.dart';
import '../calendar_property.dart';
import '../calendar_value.dart';
import '../parameters/relationship_type.dart';
import '../values/text.dart';

/// RFC2445 Section 4.8.4.5
class RelatedToProperty extends CalendarProperty<TextValue> {
  final RelationshipType? type;

  RelatedToProperty(
    String uid, {
    this.type,
  }) : super("RELATED-TO", TextValue(uid));

  @override
  T deserialize<T extends CalendarProperty<CalendarValue>>(String ical) {
    // TODO: implement deserialize
    throw UnimplementedError();
  }

  @override
  List<CalendarParameter<CalendarParameterValue>> getParameters() {
    return [
      if (type != null) RelationshipTypeParameter(type!),
    ];
  }
}
