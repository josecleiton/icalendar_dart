import '../calendar_parameter.dart';
import '../values/text.dart';

/// RFC2445 Section 4.2.7
class InlineEncodingParameter extends CalendarParameter<TextParameterValue> {
  InlineEncodingParameter(InlineEncodingType type)
      : super("ENCODING", TextParameterValue(type.value));
}

enum InlineEncodingType {
  eightBit,
  base64,
}

extension InlineEncodingTypeStringValue on InlineEncodingType {
  String get value {
    switch (this) {
      case InlineEncodingType.eightBit:
        return "8BIT";
      case InlineEncodingType.base64:
        return "BASE64";
    }
  }
}
