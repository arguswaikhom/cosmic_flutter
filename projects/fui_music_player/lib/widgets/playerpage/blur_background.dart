import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:fui_music_player/models/song.dart';

class BlurBackground extends StatelessWidget {
  final Song song;

  const BlurBackground({
    Key? key,
    required this.song,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ImageFiltered(
            imageFilter: ImageFilter.blur(
              sigmaX: 20.0,
              sigmaY: 20.0,
            ),
            child: Stack(
              children: [
                CachedNetworkImage(
                  imageUrl: song.imageURL,
                  fit: BoxFit.cover,
                ),

                /// If the image has same or similar color as the app bar icon,
                /// then the app bar icons won't be visible.
                ///
                /// The gradient is added to solve this problem.
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.center,
                      end: Alignment.topCenter,
                      colors: [
                        Theme.of(context).primaryColor.withOpacity(0.5),
                        Colors.transparent,
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Spacer(),
      ],
    );
  }
}
