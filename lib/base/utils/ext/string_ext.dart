import 'package:flutter/material.dart';

extension StringExt on String {
  /// return highlighted [TextSpan] given search [query] over this string.
  List<TextSpan>? highlightOccurrences({
    required String? query,
    required TextStyle highlightStyle,
  }) {
    if (query == null || query.isEmpty || !toLowerCase().contains(query.toLowerCase())) {
      return [TextSpan(text: this)];
    }
    final matches = query.toLowerCase().allMatches(toLowerCase());

    int lastMatchEnd = 0;

    final List<TextSpan> children = [];
    for (var i = 0; i < matches.length; i++) {
      final match = matches.elementAt(i);

      if (match.start != lastMatchEnd) {
        children.add(TextSpan(
          text: substring(lastMatchEnd, match.start),
        ));
      }

      children.add(TextSpan(
        text: substring(match.start, match.end),
        style: highlightStyle,
      ));

      if (i == matches.length - 1 && match.end != length) {
        children.add(TextSpan(
          text: substring(match.end, length),
        ));
      }

      lastMatchEnd = match.end;
    }
    return children;
  }
}
