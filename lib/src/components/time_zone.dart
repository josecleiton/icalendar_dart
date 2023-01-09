import "../calendar_component.dart";
import "../calendar_property.dart";
import "../calendar_value.dart";

class TimeZoneComponent extends CalendarComponent {
  final String tzId;

  TimeZoneComponent(this.tzId) : super("VTIMEZONE");

  @override
  T deserialize<T extends CalendarComponent>(String ical) {
    // TODO: implement deserialize
    throw UnimplementedError();
  }

  @override
  List<CalendarProperty<CalendarValue>> getProperties() {
    return [];
  }
}
