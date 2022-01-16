import 'package:cosmic_flutter/src/constants/app_image.dart';
import 'package:cosmic_flutter/src/constants/app_string.dart';
import 'package:flirt_with_style/flirt_with_style.dart';
import 'package:flutter/material.dart';

class AvatarPage extends StatefulWidget {
  const AvatarPage({Key? key}) : super(key: key);

  @override
  _AvatarPageState createState() => _AvatarPageState();
}

class _AvatarPageState extends State<AvatarPage> {
  Widget _getStandardAvatar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        FSCircleAvatar(
          avatar: FSCircleAvatarData(
            backgroundImage: AssetImage(kAIProfileFemale1),
          ),
        ),
        FSCircleAvatar(
          avatar: FSCircleAvatarData(
            foregroundColor: Colors.white,
            child: Icon(
              Icons.person,
              size: 54.0,
            ),
          ),
        ),
        FSCircleAvatar(
          avatar: FSCircleAvatarData(
            child: Text(
              "FS",
              style: TextStyle(
                fontSize: 36.0,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _getAvatarWithMiniStatus() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        FSCircleAvatar(
          avatar: FSCircleAvatarData(
            backgroundImage: AssetImage(kAIProfileFemale2),
          ),
          miniStatus: FSCircleAvatarMiniStatusData(
            backgroundColor: Colors.green,
          ),
        ),
        FSCircleAvatar(
          avatar: FSCircleAvatarData(
            child: Text(
              "FS",
              style: TextStyle(
                fontSize: 36.0,
              ),
            ),
          ),
          miniStatus: FSCircleAvatarMiniStatusData(
            backgroundColor: Colors.blue,
            alignment: Alignment.topLeft,
          ),
        ),
        FSCircleAvatar(
          avatar: FSCircleAvatarData(
            backgroundImage: AssetImage(kAIProfileAnimalCat1),
          ),
          miniStatus: FSCircleAvatarMiniStatusData(
            backgroundColor: Colors.red,
            radius: 14.0,
            alignment: Alignment.topRight,
            hasBorder: true,
            borderColor: Colors.white,
            child: Icon(
              Icons.clear,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }

  Widget _getAvatarWithRingStatus() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        FSCircleAvatar(
          avatar: FSCircleAvatarData(
            backgroundImage: AssetImage(kAIProfileMale1),
          ),
          ringStatus: FSCircleAvatarRingStatusData(
            ringStatusColor: Colors.green,
          ),
        ),
        FSCircleAvatar(
          avatar: FSCircleAvatarData(
            child: Text(
              "FS",
              style: TextStyle(
                fontSize: 36.0,
              ),
            ),
          ),
          ringStatus: FSCircleAvatarRingStatusData(),
        ),
        FSCircleAvatar(
          avatar: FSCircleAvatarData(
            backgroundImage: AssetImage(kAIProfileFemale3),
          ),
          ringStatus: FSCircleAvatarRingStatusData(
            ringStatusColor: Colors.redAccent,
          ),
        ),
      ],
    );
  }

  Widget _getAvatarWithActions() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        FSCircleAvatar(
          avatar: FSCircleAvatarData(
            backgroundImage: AssetImage(kAIProfileAnimalCat2),
          ),
          miniStatus: FSCircleAvatarMiniStatusData(
            backgroundColor: Colors.purple,
            foregroundColor: Colors.white,
            radius: 18.0,
            child: Icon(Icons.add_a_photo_outlined),
          ),
          ringStatus: FSCircleAvatarRingStatusData(
            ringStatusColor: Colors.purple,
          ),
        ),
        FSCircleAvatar(
          avatar: FSCircleAvatarData(
            child: Text(
              "FS",
              style: TextStyle(
                fontSize: 36.0,
              ),
            ),
          ),
          miniStatus: FSCircleAvatarMiniStatusData(
            backgroundColor: Colors.blue,
            hasBorder: true,
            foregroundColor: Colors.white,
            radius: 18.0,
            child: Icon(Icons.upload_outlined),
          ),
        ),
        FSCircleAvatar(
          avatar: FSCircleAvatarData(
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
            child: Icon(
              Icons.image_not_supported_outlined,
              size: 32.0,
            ),
          ),
          miniStatus: FSCircleAvatarMiniStatusData(
            backgroundColor: Colors.redAccent,
            foregroundColor: Colors.white,
            radius: 18.0,
            child: Icon(Icons.error_outline_outlined),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(AppString.titleAvatarImage)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _getStandardAvatar(),
              kFSSpaceHLarge,
              _getAvatarWithMiniStatus(),
              kFSSpaceHLarge,
              _getAvatarWithRingStatus(),
              kFSSpaceHLarge,
              _getAvatarWithActions(),
            ],
          ),
        ),
      ),
    );
  }
}
