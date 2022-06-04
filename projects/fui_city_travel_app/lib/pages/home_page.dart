import 'package:flutter/material.dart';
import 'package:fui_city_travel_app/app_mock_data.dart';
import 'package:fui_city_travel_app/models/country.dart';
import 'package:fui_city_travel_app/models/destiny.dart';
import 'package:fui_city_travel_app/pages/country_page.dart';
import 'package:fui_city_travel_app/widgets/country_widget.dart';
import 'package:fui_city_travel_app/widgets/destiny_widget.dart';
import 'package:fui_city_travel_app/widgets/sub_header_widget.dart';

const kDestinySize = 160.0;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Destiny',
          style: TextStyle(
            fontSize: 32.0,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: const [
            MostVisitedCountriesWidget(),
            TopDestinationWidget(),
          ],
        ),
      ),
    );
  }
}

class MostVisitedCountriesWidget extends StatefulWidget {
  const MostVisitedCountriesWidget({Key? key}) : super(key: key);

  @override
  State<MostVisitedCountriesWidget> createState() =>
      _MostVisitedCountriesWidgetState();
}

class _MostVisitedCountriesWidgetState
    extends State<MostVisitedCountriesWidget> {
  void onCountryFavChanged(int index) {
    countryList[index].isMyFavourite = !countryList[index].isMyFavourite;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SubHeaderWidget(
          header: 'Most visited',
          onTabSeeAll: () {},
        ),
        const SizedBox(height: 8.0),
        SizedBox(
          height: 400.0,
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: countryList.length,
            itemBuilder: (context, index) {
              final Country country = countryList[index];
              final Widget countryWidget = SizedBox(
                width: 300.0,
                child: CountryWidget(
                  country: country,
                  onFavChanged: () => onCountryFavChanged(index),
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => CountryPage(
                        country: country,
                        destinies: destinyList
                            .where((element) => element.countryID == country.id)
                            .toList(),
                      ),
                    ),
                  ),
                ),
              );

              if (index < countryList.length - 1) {
                return Row(
                  children: [
                    countryWidget,
                    const SizedBox(width: 16.0),
                  ],
                );
              }
              return countryWidget;
            },
          ),
        )
      ],
    );
  }
}

class TopDestinationWidget extends StatelessWidget {
  const TopDestinationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Destiny> destinies =
        destinyList.where((e) => e.illustration != null).toList();

    return Column(
      children: [
        const SizedBox(height: 16.0),
        SubHeaderWidget(
          header: 'Top destinations',
          onTabSeeAll: () => {},
        ),
        const SizedBox(height: 8.0),
        SizedBox(
          height: kDestinySize,
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: destinies.length,
            itemBuilder: (context, index) {
              final Widget countryWidget = SizedBox(
                width: kDestinySize,
                child: DestinationWidget(
                  destiny: destinies[index],
                  ontap: () {},
                ),
              );

              if (index < destinies.length - 1) {
                return Row(
                  children: [
                    countryWidget,
                    const SizedBox(width: 16.0),
                  ],
                );
              }
              return countryWidget;
            },
          ),
        )
      ],
    );
  }
}
