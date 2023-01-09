import '../calendar_parameter.dart';
import '../values/uri.dart';

/// RFC2445 Section 4.2.1
class AlternateTextRepresentationParameter
    extends CalendarParameter<UriParameterValue> {
  AlternateTextRepresentationParameter(
    Uri value,
  ) : super(
          "ALTREP",
          UriParameterValue(value),
        );
}
