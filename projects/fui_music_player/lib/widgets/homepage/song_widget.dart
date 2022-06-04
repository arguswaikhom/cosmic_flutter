import 'package:flutter/material.dart';
import 'package:fui_music_player/models/song.dart';

class SongWidget extends StatelessWidget {
  final Song song;
  final GestureTapCallback? onTap;

  const SongWidget({
    Key? key,
    required this.song,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Row(
            children: [
              /// Title of the song
              Text(
                song.title,
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              Spacer(),

              /// Duration of the song in min:sec
              Text(
                '${song.duration.inMinutes}:${song.duration.inSeconds % 60}',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              SizedBox(width: 20.0),
              IconButton(
                icon: Icon(Icons.more_horiz_rounded),
                onPressed: () {},
              ),
            ],
          ),
        ),
        Divider(),
      ],
    );
  }
}
