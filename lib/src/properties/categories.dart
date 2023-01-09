import 'package:intl/locale.dart';

import '../calendar_parameter.dart';
import '../calendar_parameter_value.dart';
import '../calendar_property.dart';
import '../calendar_value.dart';
import '../calendar_value_list.dart';
import '../parameters/language.dart';
import '../values/text.dart';

/// RFC2445 Section 4.8.1.2
class CategoriesProperty
    extends CalendarProperty<CalendarValueList<TextValue>> {
  final Locale? locale;

  CategoriesProperty(
    List<String> values, {
    this.locale,
  }) : super(
          "CATEGORIES",
          CalendarValueList(
            values.map((e) => TextValue(e)).toList(),
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
