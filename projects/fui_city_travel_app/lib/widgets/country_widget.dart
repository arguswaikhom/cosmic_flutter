import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:fui_city_travel_app/models/country.dart';
import 'package:fui_city_travel_app/widgets/country_name_display_widget.dart';
import 'package:fui_city_travel_app/widgets/fav_indicator_icon.dart';

class CountryWidget extends StatelessWidget {
  final Country country;
  final void Function() onTap;
  final GestureTapCallback onFavChanged;

  const CountryWidget({
    Key? key,
    required this.country,
    required this.onTap,
    required this.onFavChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(24.0)),
        child: Stack(
          fit: StackFit.expand,
          children: [
            CachedNetworkImage(
              imageUrl: country.imageURL,
              fit: BoxFit.cover,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                margin: const EdgeInsets.all(16.0),
                child: FavIndicatorIcon(
                  isFav: country.isMyFavourite,
                  onFavChanged: onFavChanged,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                margin: const EdgeInsets.all(48.0),
                child: CountryNameDisplayWidget(country),
              ),
            )
          ],
        ),
      ),
    );
  }
}
