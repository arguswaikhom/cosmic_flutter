import 'package:flutter/material.dart';

class CircularContainer extends StatelessWidget {
  final double circularRadius;
  final Color? backgroundColor;
  final Widget child;
  final EdgeInsets margin;
  final EdgeInsets padding;
  final double minWidth;
  final double minHeight;

  const CircularContainer({
    Key? key,
    this.circularRadius = 16.0,
    this.backgroundColor,
    required this.child,
    this.margin = EdgeInsets.zero,
    this.padding = EdgeInsets.zero,
    this.minWidth = 0.0,
    this.minHeight = 0.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        minWidth: minWidth,
        minHeight: minHeight,
      ),
      child: Container(
        padding: padding,
        margin: margin,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(circularRadius),
        ),
        child: child,
      ),
    );
  }
}
