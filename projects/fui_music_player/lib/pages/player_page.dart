import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:fui_music_player/models/song.dart';
import 'package:fui_music_player/widgets/playerpage/blur_background.dart';
import 'package:fui_music_player/widgets/playerpage/play_controller.dart';
import 'package:fui_music_player/widgets/playerpage/play_progress.dart';
import 'package:fui_music_player/widgets/playerpage/song_cover.dart';
import 'package:fui_music_player/widgets/playerpage/song_info.dart';
import 'package:fui_music_player/widgets/playerpage/volume_controller.dart';

class PlayerPage extends StatefulWidget {
  final Song song;

  const PlayerPage({
    Key? key,
    required this.song,
  }) : super(key: key);

  @override
  _PlayerPageState createState() => _PlayerPageState();
}

class _PlayerPageState extends State<PlayerPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        BlurBackground(song: widget.song),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            centerTitle: true,
            title: Text(widget.song.title),
            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios_outlined),
              onPressed: () => Navigator.of(context).pop(),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.info_outline_rounded),
              ),
            ],
          ),
          body: Container(
            padding: EdgeInsets.all(32.0),
            decoration: BoxDecoration(
              color: Theme.of(context).scaffoldBackgroundColor,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(48),
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SongCover(song: widget.song),
                PlayProgress(),
                SongInfo(song: widget.song),
                PlayController(),
                VolumeController(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
