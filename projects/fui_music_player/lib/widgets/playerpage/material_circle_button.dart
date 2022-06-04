import 'package:flutter/material.dart';

class MaterialCircleButton extends StatelessWidget {
  final Widget child;
  final EdgeInsets margin;
  final EdgeInsets padding;
  final GestureTapCallback? onTap;

  const MaterialCircleButton({
    Key? key,
    required this.child,
    this.margin = EdgeInsets.zero,
    this.padding = EdgeInsets.zero,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      shape: CircleBorder(),
      clipBehavior: Clip.hardEdge,
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        child: Container(
          margin: margin,
          padding: padding,
          child: child,
        ),
      ),
    );
  }
}
