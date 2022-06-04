import 'package:flutter/material.dart';
import 'package:fui_music_player/models/song.dart';
import 'package:fui_music_player/widgets/homepage/song_widget.dart';

typedef OnTapSongItem = void Function(Song);

class PopularList extends StatelessWidget {
  final List<Song> songs;
  final int maxLength;
  final OnTapSongItem? onTapSong;

  const PopularList({
    Key? key,
    required this.songs,
    this.maxLength = 4,
    this.onTapSong,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        children: [
          /// Header of the popular list
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Row(
              children: [
                Text(
                  'Popular',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                TextButton(
                  onPressed: () {},
                  child: Text('Show all'),
                ),
              ],
            ),
          ),
          Expanded(
            /// By default, ListView has top padding, 20.0
            /// We can remove this by wrapping it with MediaQuery.removePadding
            /// and setting the removeTop value to true
            child: MediaQuery.removePadding(
              context: context,
              removeTop: true,
              child: ListView.builder(
                physics: BouncingScrollPhysics(),

                /// Making the list display up to 4 items
                itemCount: maxLength < songs.length ? maxLength : songs.length,
                itemBuilder: (context, index) => SongWidget(
                  song: songs[index],
                  onTap: () => onTapSong?.call(songs[index]),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
