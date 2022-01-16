import 'package:cosmic_flutter/src/models/title_nav.dart';
import 'package:flutter/material.dart';

class ExpandableNavGroup {
  final String label;
  final IconData icon;
  final List<TitleNav> children;
  bool isExpanded = false;

  ExpandableNavGroup({
    required this.label,
    required this.icon,
    required this.children,
  });
}
