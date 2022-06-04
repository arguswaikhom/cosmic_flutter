import 'package:flutter/material.dart';

class PlayProgress extends StatelessWidget {
  const PlayProgress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = const TextStyle(color: Colors.grey);
    return Column(
      children: [
        LinearProgressIndicator(
          minHeight: 3.0,
          value: 0.4,
          backgroundColor: Colors.black12,
        ),
        SizedBox(height: 8.0),
        Row(
          children: [
            Text('1:20', style: textStyle),
            Spacer(),
            Text('5:10', style: textStyle),
          ],
        ),
      ],
    );
  }
}
