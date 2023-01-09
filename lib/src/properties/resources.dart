import 'package:intl/locale.dart';

import '../calendar_parameter.dart';
import '../calendar_parameter_value.dart';
import '../calendar_property.dart';
import '../calendar_value.dart';
import '../calendar_value_list.dart';
import '../parameters/alternate_text_representation.dart';
import '../parameters/language.dart';
import '../values/text.dart';

/// RFC2445 Section 4.8.1.10
class ResourcesProperty extends CalendarProperty<CalendarValueList<TextValue>> {
  final Uri? alternateTextRepresentation;
  final Locale? locale;

  ResourcesProperty(
    List<String> resources, {
    this.alternateTextRepresentation,
    this.locale,
  }) : super(
          "RESOURCES",
          CalendarValueList(
            resources.map((e) => TextValue(e)).toList(),
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
      if (alternateTextRepresentation != null)
        AlternateTextRepresentationParameter(alternateTextRepresentation!),
      if (locale != null) LanguageParameter(locale!),
    ];
  }
}
