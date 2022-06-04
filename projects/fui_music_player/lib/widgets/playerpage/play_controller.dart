import 'package:flutter/material.dart';
import 'package:fui_music_player/widgets/playerpage/material_circle_button.dart';

class PlayController extends StatelessWidget {
  final GestureTapCallback? onTapBackward;
  final GestureTapCallback? onTapPlayPause;
  final GestureTapCallback? onTapForward;

  const PlayController({
    Key? key,
    this.onTapBackward,
    this.onTapPlayPause,
    this.onTapForward,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        MaterialCircleButton(
          padding: EdgeInsets.all(16.0),
          child: Icon(Icons.fast_rewind_rounded),
          onTap: onTapBackward,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(64.0)),
            border: Border.all(
              width: 2.0,
              color: Colors.black12,
            ),
          ),
          child: MaterialCircleButton(
            padding: EdgeInsets.all(22.0),
            child: Icon(Icons.pause),
            onTap: onTapPlayPause,
          ),
        ),
        MaterialCircleButton(
          padding: EdgeInsets.all(16.0),
          child: Icon(Icons.fast_forward_rounded),
          onTap: onTapForward,
        ),
      ],
    );
  }
}
