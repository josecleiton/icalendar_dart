import 'calendar_property.dart';

abstract class CalendarComponent {
  final String componentName;

  CalendarComponent(this.componentName);

  List<CalendarProperty> getProperties();

  @override
  String toString() {
    final res = StringBuffer();
    res.writeln("BEGIN:${componentName.toUpperCase()}");
    res.writeAll(getProperties(), "\n");
    res.writeln("END:${componentName.toUpperCase()}");
    return res.toString();
  }

  T deserialize<T extends CalendarComponent>(String ical);
}
