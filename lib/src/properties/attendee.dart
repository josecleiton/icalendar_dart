import 'package:intl/locale.dart';

import '../calendar_parameter.dart';
import '../calendar_parameter_value.dart';
import '../calendar_property.dart';
import '../calendar_value.dart';
import '../parameters/calendar_user_type.dart';
import '../parameters/common_name.dart';
import '../parameters/delegatees.dart';
import '../parameters/delegators.dart';
import '../parameters/directory_entry.dart';
import '../parameters/group_or_list_membership.dart';
import '../parameters/language.dart';
import '../parameters/participation_role.dart';
import '../parameters/participation_status.dart';
import '../parameters/rsvp_expectation.dart';
import '../parameters/sent_by.dart';
import '../values/calendar_user_address.dart';

/// RFC2445 Section 4.8.4.1
class AttendeeProperty extends CalendarProperty<CalendarUserAddressValue> {
  final Locale? locale;
  final CalendarUserType? userType;
  final List<String>? membershipEmails;
  final ParticipationRoleType? participationRoleType;
  final ParticipationStatusType? participationStatusType;
  final bool? rsvpExpectation;
  final List<String>? delegateeEmails;
  final List<String>? delegatorEmails;
  final String? sentByEmail;
  final String? commonName;
  final Uri? directoryEntryUri;

  AttendeeProperty(
    String email, {
    this.locale,
    this.userType,
    this.membershipEmails,
    this.participationRoleType,
    this.participationStatusType,
    this.rsvpExpectation,
    this.delegateeEmails,
    this.delegatorEmails,
    this.sentByEmail,
    this.commonName,
    this.directoryEntryUri,
  }) : super("ATTENDEE", CalendarUserAddressValue(email));

  @override
  T deserialize<T extends CalendarProperty<CalendarValue>>(String ical) {
    // TODO: implement deserialize
    throw UnimplementedError();
  }

  @override
  List<CalendarParameter<CalendarParameterValue>> getParameters() {
    return [
      if (locale != null) LanguageParameter(locale!),
      if (userType != null) CalendarUserTypeParameter(userType!),
      if (membershipEmails != null && membershipEmails!.isNotEmpty)
        GroupOrListMembershipParameter(membershipEmails!),
      if (participationRoleType != null)
        ParticipationRoleParameter(participationRoleType!),
      if (participationStatusType != null)
        ParticipationStatusParameter(participationStatusType!),
      if (rsvpExpectation != null) RSVPExpectationParameter(rsvpExpectation!),
      if (delegateeEmails != null && delegateeEmails!.isNotEmpty)
        DelegateesParameter(delegateeEmails!),
      if (delegatorEmails != null && delegatorEmails!.isNotEmpty)
        DelegatorsParameter(delegatorEmails!),
      if (sentByEmail != null) SentByParameter(sentByEmail!),
      if (commonName != null) CommonNameParameter(commonName!),
      if (directoryEntryUri != null)
        DirectoryEntryParameter(directoryEntryUri!),
    ];
  }
}
