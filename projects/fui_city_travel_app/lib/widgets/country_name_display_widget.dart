import 'package:flutter/material.dart';
import 'package:fui_city_travel_app/models/country.dart';

class CountryNameDisplayWidget extends StatelessWidget {
  final Country country;
  const CountryNameDisplayWidget(this.country, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          country.name,
          style: const TextStyle(
            fontSize: 48.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        Row(
          children: [
            const Icon(
              Icons.location_on,
              color: Colors.white70,
            ),
            const SizedBox(width: 4.0),
            Text(
              '${country.attraction} attractions',
              style: const TextStyle(
                color: Colors.white70,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
