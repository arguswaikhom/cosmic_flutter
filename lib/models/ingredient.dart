import 'package:flutter/material.dart';

class Ingredient {
  final Widget widget;
  final String title;
  final String image;
  final String source;
  final String? description;
  final List<String>? authors;
  final DateTime? addedOn;

  Ingredient({
    required this.widget,
    required this.title,
    required this.image,
    required this.source,
    this.description,
    this.authors,
    this.addedOn,
  });
}
