import '../calendar_parameter_value.dart';
import '../calendar_value.dart';

/// RFC2445 Section 4.3.11
class TextValue extends CalendarValue<String> {
  final bool escapeCharacters;

  TextValue(
    String value, {
    this.escapeCharacters = true,
  }) : super(value, ValueType.text);

  @override
  String sanitizeToString() {
    final val = value.trim();
    if (!escapeCharacters) {
      return val;
    }
    return val
        .replaceAllMapped(RegExp(r'(;|,|\\)'), (match) => "\\${match[0]}")
        .replaceAllMapped(RegExp(r'(\n)'), (match) => "\\n");
  }
}

class TextParameterValue extends TextValue with CalendarParameterValue {
  TextParameterValue(String value) : super(value);
}
