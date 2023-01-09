import '../calendar_parameter.dart';
import '../values/uri.dart';

/// RFC2445 Section 4.2.6
class DirectoryEntryParameter extends CalendarParameter<UriParameterValue> {
  DirectoryEntryParameter(Uri uri) : super("DIR", UriParameterValue(uri));
}
