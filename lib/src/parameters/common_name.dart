import '../calendar_parameter.dart';
import '../values/text.dart';

/// RFC2445 Section 4.2.2
class CommonNameParameter extends CalendarParameter<TextParameterValue> {
  CommonNameParameter(String commonName)
      : super(
          "CN",
          TextParameterValue(commonName),
        );
}
