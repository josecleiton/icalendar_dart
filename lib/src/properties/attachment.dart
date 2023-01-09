import 'dart:io';
import 'dart:typed_data';

import '../calendar_parameter.dart';
import '../calendar_parameter_value.dart';
import '../calendar_property.dart';
import '../calendar_value.dart';
import '../parameters/format_type.dart';
import '../parameters/value_data_type.dart';
import '../values/binary.dart';
import '../values/uri.dart';

/// RFC2445 Section 4.8.1.1
class UriAttachmentProperty extends CalendarProperty<UriValue> {
  UriAttachmentProperty(Uri value) : super("ATTACH", UriValue(value));

  @override
  T deserialize<T extends CalendarProperty<CalendarValue>>(String ical) {
    // TODO: implement deserialize
    throw UnimplementedError();
  }

  @override
  List<CalendarParameter<CalendarParameterValue>> getParameters() {
    return [
      ValueDataTypeParameter(ValueType.uri),
    ];
  }
}

/// RFC2445 Section 4.8.1.1
class BinaryAttachmentProperty extends CalendarProperty<BinaryValue> {
  final ContentType? contentType;

  BinaryAttachmentProperty(Uint8List value, this.contentType)
      : super("ATTACH", BinaryValue(value));

  @override
  T deserialize<T extends CalendarProperty<CalendarValue>>(String ical) {
    // TODO: implement deserialize
    throw UnimplementedError();
  }

  @override
  List<CalendarParameter<CalendarParameterValue>> getParameters() {
    return [
      if (contentType != null) FormatTypeParameter(contentType!),
    ];
  }
}
