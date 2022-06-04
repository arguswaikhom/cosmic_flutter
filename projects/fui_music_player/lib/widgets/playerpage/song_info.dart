import 'package:flutter/material.dart';
import 'package:fui_music_player/models/song.dart';

class SongInfo extends StatelessWidget {
  final Song song;

  const SongInfo({
    Key? key,
    required this.song,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          song.title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24.0,
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(song.artist),
        ),
      ],
    );
  }
}
