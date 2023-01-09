import 'package:intl/locale.dart';

import '../calendar_parameter.dart';
import '../values/text.dart';

/// RFC2445 Section 4.2.10
class LanguageParameter extends CalendarParameter<TextParameterValue> {
  LanguageParameter(Locale locale)
      : super("LANGUAGE", TextParameterValue(locale.languageCode));
}
