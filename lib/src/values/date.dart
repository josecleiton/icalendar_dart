// Copyright (c) 2023 Brian Tutovic All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:intl/intl.dart';

import '../calendar_parameter_value.dart';
import '../calendar_value.dart';

/// RFC2445 Section 4.3.4
class DateValue extends CalendarValue<DateTime> {
  const DateValue(DateTime value) : super(value, ValueType.date);

  factory DateValue.fromCrawledStringValue(String value) =>
      DateValue(DateFormat("yMMdd").parse(value.toUpperCase()));

  @override
  String sanitizeToString() {
    return DateFormat("yMMdd").format(value);
  }
}

class DateParameterValue extends DateValue with CalendarParameterValue {
  DateParameterValue(super.value);
}
