import 'dart:io';

import '../calendar_parameter.dart';
import '../values/text.dart';

/// RFC2445 Section 4.2.8
class FormatTypeParameter extends CalendarParameter<TextParameterValue> {
  FormatTypeParameter(ContentType type)
      : super("FMTTYPE", TextParameterValue(type.mimeType));
}
