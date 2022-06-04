import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:fui_music_player/models/song.dart';

class SongCover extends StatelessWidget {
  final Song song;

  const SongCover({
    Key? key,
    required this.song,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final radius = const BorderRadius.all(Radius.circular(48.0));
    return Material(
      elevation: 32.0,
      borderRadius: radius,
      child: ClipRRect(
        borderRadius: radius,
        child: Container(
          height: 200.0,
          width: 200.0,
          child: CachedNetworkImage(
            imageUrl: song.imageURL,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
