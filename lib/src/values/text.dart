// Copyright (c) 2023 Brian Tutovic All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import '../calendar_parameter_value.dart';
import '../calendar_value.dart';

/// RFC2445 Section 4.3.11
class TextValue extends CalendarValue<String> {
  final bool escapeCharacters;

  const TextValue(
    String value, {
    this.escapeCharacters = true,
  }) : super(value, ValueType.text);

  factory TextValue.fromCrawledStringValue(String value) => TextValue(
        value
            .replaceAllMapped(
              RegExp(r'\\(,|\\|;)', caseSensitive: false),
              (match) => match.group(1)!,
            )
            .replaceAll(RegExp(r'\\n', caseSensitive: false), "\n"),
      );

  @override
  String sanitizeToString() {
    final val = value.trim();
    if (!escapeCharacters) {
      return val;
    }
    return val
        .replaceAllMapped(RegExp(r'(;|,|\\)'), (match) => "\\${match[0]}")
        .replaceAllMapped(RegExp(r'(\n)'), (match) => "\\n");
  }
}

class TextParameterValue extends TextValue with CalendarParameterValue {
  TextParameterValue(super.value);
}
