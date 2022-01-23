import 'package:cosmic_flutter/views/widgets/linked_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class InfoPage extends StatefulWidget {
  const InfoPage({Key? key}) : super(key: key);

  @override
  _InfoPageState createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  @override
  Widget build(BuildContext context) {
    final TextStyle? textStyle =
        Theme.of(context).textTheme.bodyText1?.copyWith(
              color: Colors.white,
            );
    return Card(
      elevation: 100,
      shadowColor: Colors.white.withOpacity(0.2),
      color: Colors.black.withOpacity(0.8),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 32.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 64.0,
              child: const FaIcon(
                FontAwesomeIcons.meteor,
                size: 64,
                color: Colors.red,
              ),
              backgroundColor: Colors.white.withOpacity(0.1),
            ),
            const SizedBox(height: 16),
            Text(
              'Cosmic Flutter',
              style: Theme.of(context).textTheme.headline6?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: const [
                LinkedIconButton(
                  iconData: FontAwesomeIcons.instagram,
                  url: 'https://www.instagram.com/flirtwithflutter/',
                ),
                LinkedIconButton(
                  iconData: FontAwesomeIcons.github,
                  url: 'https://github.com/arguswaikhom/cosmic_flutter',
                ),
                LinkedIconButton(
                  iconData: FontAwesomeIcons.linkedin,
                  url: 'https://bit.ly/3eIihyK',
                ),
                LinkedIconButton(
                  iconData: FontAwesomeIcons.medium,
                  url: 'https://arguswaikhom.medium.com/',
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Card(
                color: Colors.white.withOpacity(0.1),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'An open-source flutter application gallery. Every single application in the Cosmic Flutter app is available publicly and are free to use. If you want to contribute PRs are more than welcome.',
                    style: Theme.of(context).textTheme.bodyText1?.copyWith(
                          color: Colors.white,
                        ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            InkWell(
              child: Text.rich(
                TextSpan(
                  children: [
                    const TextSpan(text: 'Build with 💜 by '),
                    TextSpan(
                      text: 'Argus Waikhom',
                      style: textStyle?.copyWith(
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                  style: textStyle,
                ),
              ),
              onTap: () async {
                const String url = 'https://www.instagram.com/arguswaikhom/';
                if (!await launch(url)) throw 'Could not launch $url';
              },
            ),
          ],
        ),
      ),
    );
  }
}
