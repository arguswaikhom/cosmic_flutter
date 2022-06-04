import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:fui_city_travel_app/models/destiny.dart';
import 'package:fui_city_travel_app/pages/home_page.dart';

class DestinationWidget extends StatelessWidget {
  final Destiny destiny;
  final void Function() ontap;

  const DestinationWidget({
    Key? key,
    required this.destiny,
    required this.ontap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: CircleAvatar(
        radius: kDestinySize,
        backgroundImage: CachedNetworkImageProvider(destiny.illustration!),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            margin: const EdgeInsets.only(bottom: 32.0),
            child: Text(
              destiny.destiny,
              style: const TextStyle(
                backgroundColor: Colors.white54,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 22.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
