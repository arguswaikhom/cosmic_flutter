import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:fui_city_travel_app/models/country.dart';
import 'package:fui_city_travel_app/models/destiny.dart';
import 'package:fui_city_travel_app/widgets/country_destination_widget.dart';
import 'package:fui_city_travel_app/widgets/country_name_display_widget.dart';
import 'package:fui_city_travel_app/widgets/fav_indicator_icon.dart';

class CountryPage extends StatefulWidget {
  final Country country;
  final List<Destiny> destinies;

  const CountryPage({
    Key? key,
    required this.country,
    required this.destinies,
  }) : super(key: key);

  @override
  _CountryPageState createState() => _CountryPageState();
}

class _CountryPageState extends State<CountryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Primary full screen image
          CachedNetworkImage(
            imageUrl: widget.country.imageURL,
            fit: BoxFit.cover,
          ),

          // Custom appbar
          Align(
            alignment: Alignment.topLeft,
            child: SafeArea(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Appbar up action
                  Container(
                    margin: const EdgeInsets.all(16.0),
                    child: Material(
                      color: Colors.black45,
                      shape: const CircleBorder(),
                      child: Padding(
                        padding:
                            const EdgeInsets.fromLTRB(12.0, 12.0, 4.0, 12.0),
                        child: GestureDetector(
                          child: const Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white70,
                          ),
                          onTap: () => Navigator.of(context).pop(),
                        ),
                      ),
                    ),
                  ),

                  // Appbar country favourite icon indicator
                  Container(
                    margin: const EdgeInsets.all(16.0),
                    child: FavIndicatorIcon(
                      isFav: widget.country.isMyFavourite,
                      onFavChanged: () {
                        widget.country.isMyFavourite =
                            !widget.country.isMyFavourite;
                        setState(() {});
                      },
                      iconSize: 32.0,
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Bottom destinations widget
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              margin: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Country name and attraction widget
                  CountryNameDisplayWidget(widget.country),
                  const SizedBox(height: 16.0),

                  // Destination listview
                  SizedBox(
                    height: 120,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      physics: const BouncingScrollPhysics(),
                      itemCount: widget.destinies.length,
                      itemBuilder: (context, index) {
                        final Widget destiny = SizedBox(
                          width: 150.0,
                          height: 120.0,
                          child: CountryDestinyWidget(widget.destinies[index]),
                        );
                        if (index < widget.destinies.length - 1) {
                          return Row(
                            children: [
                              destiny,
                              const SizedBox(width: 16.0),
                            ],
                          );
                        }
                        return destiny;
                      },
                    ),
                  ),
                  const SizedBox(height: 16.0),

                  // Show more dummy button
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 20.0),
                    child: Column(
                      children: const [
                        Icon(
                          Icons.keyboard_arrow_up_rounded,
                          color: Colors.white,
                        ),
                        Text(
                          'More',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
