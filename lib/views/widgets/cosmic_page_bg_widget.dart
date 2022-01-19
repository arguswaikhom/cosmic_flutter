import 'package:cosmic_flutter/resources/app_assets.dart';
import 'package:flutter/material.dart';

class CosmicPageBgWidget extends StatelessWidget {
  final Widget child;

  const CosmicPageBgWidget({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(kImgBg, fit: BoxFit.cover),
        child,
      ],
    );
  }
}
