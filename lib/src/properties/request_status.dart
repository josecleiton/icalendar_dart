import 'package:intl/locale.dart';

import '../calendar_parameter.dart';
import '../calendar_parameter_value.dart';
import '../calendar_property.dart';
import '../calendar_value.dart';
import '../parameters/language.dart';
import '../values/float.dart';
import '../values/text.dart';

/// RFC2445 Section 4.8.8.2
class RequestStatusProperty extends CalendarProperty<TextValue> {
  final Locale? locale;

  RequestStatusProperty(
    double statusCode,
    String statusDescription, {
    String? extraData,
    this.locale,
  }) : super(
          "REQUEST-STATUS",
          TextValue(
            "${FloatValue(statusCode)};${TextValue(statusDescription)}${extraData == null ? "" : ";${TextValue(extraData)}"}",
            escapeCharacters: false,
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
      if (locale != null) LanguageParameter(locale!),
    ];
  }
}
