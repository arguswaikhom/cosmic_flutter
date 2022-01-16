import 'package:flutter/material.dart';

typedef ExpansionEntryHeaderBuilder = Widget Function(bool isExpanded);

class ExpansionEntry {
  final bool isExpanded;
  final ExpansionEntryHeaderBuilder headerBuilder;
  final Widget body;

  const ExpansionEntry({
    Key? key,
    required this.isExpanded,
    required this.headerBuilder,
    required this.body,
  });
}
