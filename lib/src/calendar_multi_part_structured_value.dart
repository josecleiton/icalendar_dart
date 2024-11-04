// Copyright (c) 2023 Brian Tutovic All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'calendar_value.dart';

/// Meant for structured values
/// separated by Semicolons (;)
abstract class CalendarMultiPartStructuredValue<InnerValue>
    extends CalendarValue<InnerValue> {
  const CalendarMultiPartStructuredValue(
    super.value,
    super.type,
  );

  List<CalendarStructuredValuePart> getValueParts();

  @override
  String sanitizeToString() {
    final res = StringBuffer();
    res.writeAll(getValueParts(), ";");
    return res.toString();
  }
}

abstract class CalendarStructuredValuePart<InnerType>
    extends CalendarValue<InnerType> {
  final String partName;

  const CalendarStructuredValuePart(
    this.partName,
    InnerType value,
    ValueType type,
  ) : super(value, type);

  @override
  String toString() {
    final valStr = super.toString();
    return "${partName.toUpperCase()}=$valStr";
  }
}
