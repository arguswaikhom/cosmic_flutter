import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:fui_fashion_mobile_app_design/models/entry_model.dart';

class PostPage extends StatefulWidget {
  final EntryModel entry;

  const PostPage({
    Key? key,
    required this.entry,
  }) : super(key: key);

  @override
  _PostPageState createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  Widget _getReaction(IconData icon, int count) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 12.0),
      child: Column(
        children: [
          Icon(
            icon,
            color: Colors.white,
            size: 30.0,
          ),
          SizedBox(height: 6.0),
          Text(
            count.toString(),
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  Widget _getReactionWidget() {
    return Container(
      margin: EdgeInsets.only(left: 24.0),
      child: Column(
        children: [
          _getReaction(Icons.message_outlined, widget.entry.commentCount),
          _getReaction(Icons.favorite_border_outlined, widget.entry.likeCount),
          _getReaction(Icons.access_time_outlined, widget.entry.viewCount),
        ],
      ),
    );
  }

  Widget _getFollowButton() {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: ElevatedButton.icon(
        onPressed: () {},
        icon: CircleAvatar(
          child: Icon(
            Icons.add,
            size: 16.0,
          ),
          radius: 12.0,
          backgroundColor: Colors.white,
        ),
        label: Text('Follow'),
        style: ButtonStyle(
          minimumSize: ButtonStyleButton.allOrNull<Size>(Size(0, 42.0)),
          backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(32.0),
                topRight: Radius.circular(32.0),
                bottomRight: Radius.circular(32.0),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _getBottomWidget() {
    return Container(
      margin: EdgeInsets.all(16.0),
      child: Stack(
        children: [
          Positioned.fill(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(36.0),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 8.0, sigmaY: 8.0),
                child: Container(
                  color: Colors.grey.withOpacity(0.3),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(18.0),
            height: 202.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.entry.name,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 26.0,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 10.0),
                Expanded(
                  child: Text(
                    widget.entry.about,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 5,
                    style: TextStyle(
                      height: 1.5,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 10.0),
                Align(
                  alignment: Alignment.bottomRight,
                  child: _getFollowButton(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _getBodyWidget() {
    return Stack(
      children: [
        Positioned(
          bottom: 0.0,
          left: 0.0,
          right: 0.0,
          child: _getBottomWidget(),
        ),
        Positioned(
          left: 0.0,
          top: 100.0,
          child: _getReactionWidget(),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      alignment: Alignment.center,
      children: [
        CachedNetworkImage(
          fit: BoxFit.cover,
          imageUrl: widget.entry.imageAsset,
        ),
        SafeArea(
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0.0,
              leading: IconButton(
                icon: Icon(Icons.arrow_back_ios_outlined),
                onPressed: () => Navigator.of(context).pop(),
              ),
              actions: [
                IconButton(
                  icon: Icon(Icons.more_vert_outlined),
                  onPressed: () {},
                ),
              ],
            ),
            body: _getBodyWidget(),
            backgroundColor: Colors.transparent,
          ),
        ),
      ],
    );
  }
}
