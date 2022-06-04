import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AlbumCover extends StatelessWidget {
  final String artistName;
  final String albumCoverImageURL;

  const AlbumCover({
    Key? key,
    required this.artistName,
    required this.albumCoverImageURL,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /// ClipRRect, to clip the bottomLeft corner of the widget
    return ClipRRect(
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(48.0),
      ),
      child: Stack(
        fit: StackFit.expand,
        children: [
          /// Main album cover image
          CachedNetworkImage(
            imageUrl: albumCoverImageURL,
            fit: BoxFit.cover,
          ),

          /// Applying liner gradient from bottomLeft to topRight
          /// this makes the text more visible when the text color and image
          /// color are same or almost same
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: [
                  Colors.grey,
                  Colors.transparent,
                ],
              ),
            ),
          ),

          /// Positioning to bottom left
          Positioned(
            bottom: 0.0,
            left: 0.0,
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'TRENDING',
                    style: TextStyle(
                      color: Theme.of(context).accentColor,
                    ),
                  ),
                  SizedBox(height: 50.0),

                  /// Displaying the artist name in 2 lines
                  Text(
                    artistName.replaceFirst(r' ', '\n'),
                    style: GoogleFonts.greatVibes(
                      fontSize: 72.0,
                      fontWeight: FontWeight.bold,
                      height: 0.7,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
