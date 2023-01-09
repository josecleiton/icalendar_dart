import '../calendar_parameter.dart';
import '../values/text.dart';

/// RFC2445 Section 4.2.15
class RelationshipTypeParameter extends CalendarParameter<TextParameterValue> {
  RelationshipTypeParameter(RelationshipType type)
      : super("RELTYPE", TextParameterValue(type.value));
}

enum RelationshipType {
  parent,
  child,
  sibling,
}

extension RelationshipTypeStringValue on RelationshipType {
  String get value {
    switch (this) {
      case RelationshipType.parent:
        return "PARENT";
      case RelationshipType.child:
        return "CHILD";
      case RelationshipType.sibling:
        return "SIBLING";
    }
  }
}
