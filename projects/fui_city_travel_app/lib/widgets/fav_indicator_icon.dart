import 'package:flutter/material.dart';

class FavIndicatorIcon extends StatelessWidget {
  final bool isFav;
  final GestureTapCallback onFavChanged;
  final double? iconSize;

  const FavIndicatorIcon({
    Key? key,
    required this.isFav,
    required this.onFavChanged,
    this.iconSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      shape: const CircleBorder(),
      clipBehavior: Clip.hardEdge,
      color: isFav ? Theme.of(context).colorScheme.secondary : Colors.white38,
      child: InkWell(
        onTap: onFavChanged,
        child: Container(
          padding: const EdgeInsets.all(4.0),
          child: isFav
              ? Icon(
                  Icons.star,
                  color: Colors.white,
                  size: iconSize,
                )
              : Icon(
                  Icons.star_border,
                  color: Colors.white,
                  size: iconSize,
                ),
        ),
      ),
    );
  }
}
