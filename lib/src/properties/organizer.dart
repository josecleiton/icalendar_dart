import 'package:intl/locale.dart';

import '../calendar_parameter.dart';
import '../calendar_parameter_value.dart';
import '../calendar_property.dart';
import '../calendar_value.dart';
import '../parameters/common_name.dart';
import '../parameters/directory_entry.dart';
import '../parameters/language.dart';
import '../parameters/sent_by.dart';
import '../values/calendar_user_address.dart';

/// RFC2445 Section 4.8.4.3
class OrganizerProperty extends CalendarProperty<CalendarUserAddressValue> {
  final Locale? locale;
  final String? commonName;
  final Uri? directoryEntryUri;
  final String? sentByEmail;

  OrganizerProperty(
    String email, {
    this.locale,
    this.commonName,
    this.directoryEntryUri,
    this.sentByEmail,
  }) : super("ORGANIZER", CalendarUserAddressValue(email));

  @override
  T deserialize<T extends CalendarProperty<CalendarValue>>(String ical) {
    // TODO: implement deserialize
    throw UnimplementedError();
  }

  @override
  List<CalendarParameter<CalendarParameterValue>> getParameters() {
    return [
      if (locale != null) LanguageParameter(locale!),
      if (commonName != null) CommonNameParameter(commonName!),
      if (directoryEntryUri != null)
        DirectoryEntryParameter(directoryEntryUri!),
      if (sentByEmail != null) SentByParameter(sentByEmail!),
    ];
  }
}
