import 'package:flutter/material.dart';

class VolumeController extends StatefulWidget {
  const VolumeController({Key? key}) : super(key: key);

  @override
  _VolumeControllerState createState() => _VolumeControllerState();
}

class _VolumeControllerState extends State<VolumeController> {
  /// The initial value of the volume.
  /// In real world scenario, you'll need to get this value from the system,
  /// and update the value everytime it changes
  double _volumeValue = 0.5;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.volume_off,
          color: Colors.black12,
        ),
        Flexible(
          child: SliderTheme(
            data: SliderThemeData(
              trackHeight: 1.0,
              activeTrackColor: Colors.black,
              thumbColor: Colors.black,
              overlayColor: Colors.black12,
              inactiveTrackColor: Colors.black12,
            ),
            child: Slider(
              value: _volumeValue,
              onChanged: (double value) {
                setState(() => _volumeValue = value);
              },
            ),
          ),
        ),
        Icon(
          Icons.volume_up,
          color: Colors.black12,
        ),
      ],
    );
  }
}
