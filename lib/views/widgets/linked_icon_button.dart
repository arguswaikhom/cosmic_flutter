import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LinkedIconButton extends StatelessWidget {
  final IconData iconData;

  const LinkedIconButton({
    Key? key,
    required this.iconData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: FaIcon(
        iconData,
        color: Colors.white,
      ),
    );
  }
}
