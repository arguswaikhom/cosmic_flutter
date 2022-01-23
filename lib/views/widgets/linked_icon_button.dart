import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class LinkedIconButton extends StatelessWidget {
  final String url;
  final IconData iconData;

  const LinkedIconButton({
    Key? key,
    required this.url,
    required this.iconData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () async {
        if (!await launch(url)) throw 'Could not launch $url';
      },
      icon: FaIcon(
        iconData,
        color: Colors.white,
      ),
    );
  }
}
