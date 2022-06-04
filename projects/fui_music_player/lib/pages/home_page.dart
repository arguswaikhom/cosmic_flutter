import 'package:flutter/material.dart';
import 'package:fui_music_player/mocks/songs_mock.dart';
import 'package:fui_music_player/pages/player_page.dart';
import 'package:fui_music_player/widgets/homepage/album_cover.dart';
import 'package:fui_music_player/widgets/homepage/popular_list.dart';

const String kAlbumCoverImageURL =
    'https://github.com/arguswaikhom/ResourceBank/blob/master/arguswaikhom/fui_music_player/cover.jpg?raw=true';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: AlbumCover(
                  artistName: 'Ariana Grande',
                  albumCoverImageURL: kAlbumCoverImageURL,
                ),
              ),
              Expanded(
                child: PopularList(
                  songs: kSongs,
                  onTapSong: (song) => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => PlayerPage(
                        song: song,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            height: 64.0,
            width: 64.0,
            margin: EdgeInsets.all(32.0),
            child: FloatingActionButton(
              elevation: 0.0,
              child: Icon(
                Icons.play_arrow,
                size: 30.0,
              ),
              onPressed: () {},
            ),
          ),
        ),
        SafeArea(
          child: Container(
            height: kToolbarHeight,
            child: AppBar(
              leading: IconButton(
                icon: Icon(Icons.sort),
                onPressed: () {},
              ),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.info_outline_rounded),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
