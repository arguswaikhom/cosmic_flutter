import 'package:fui_city_travel_app/models/destiny.dart';
import 'package:fui_city_travel_app/models/country.dart';

const String kRoot =
    'https://raw.githubusercontent.com/arguswaikhom/ResourceBank/master/arguswaikhom/fui_city_travel_app';

List<Country> countryList = [
  Country(
    id: 'india',
    name: 'India',
    attraction: 540,
    imageURL: '$kRoot/india/india-front.jpg',
    isMyFavourite: true,
  ),
  Country(
    id: 'usa',
    name: 'USA',
    attraction: 120,
    imageURL: '$kRoot/usa/usa-ny-front.jpg',
  ),
  Country(
    id: 'italy',
    name: 'Italy',
    attraction: 240,
    imageURL: '$kRoot/italy/italy-front.jpg',
    isMyFavourite: true,
  ),
  Country(
    id: 'england',
    name: 'England',
    attraction: 576,
    imageURL: '$kRoot/uk/london-front.jpg',
    isMyFavourite: true,
  ),
  Country(
    id: 'france',
    name: 'France',
    attraction: 888,
    imageURL: '$kRoot/france/france-paris-front.jpg',
  ),
];

List<Destiny> destinyList = [
  Destiny(
    countryID: 'india',
    destiny: 'Kerala',
    imageURL: '$kRoot/india/india-kerala.jpg',
  ),
  Destiny(
    countryID: 'india',
    destiny: 'Khajjiar',
    imageURL: '$kRoot/india/india-khajjiar.jpg',
  ),
  Destiny(
    countryID: 'india',
    destiny: 'Ladak',
    imageURL: '$kRoot/india/india-ladakh.jpg',
  ),
  Destiny(
    countryID: 'india',
    destiny: 'Loktak',
    imageURL: '$kRoot/india/india-loktak-lake.jpg',
  ),
  Destiny(
    countryID: 'india',
    destiny: 'Valley of Flower',
    imageURL: '$kRoot/india/india-valley-of-flowers.jpg',
  ),
  Destiny(
    countryID: 'usa',
    destiny: 'California',
    imageURL: '$kRoot/usa/usa-california.jpg',
  ),
  Destiny(
    countryID: 'usa',
    destiny: 'Chicago',
    imageURL: '$kRoot/usa/usa-chicago.jpg',
  ),
  Destiny(
    countryID: 'usa',
    destiny: 'Los Angeles',
    imageURL: '$kRoot/usa/usa-la.jpg',
  ),
  Destiny(
    countryID: 'usa',
    destiny: 'Las Vagas',
    imageURL: '$kRoot/usa/usa-las-vagas.jpg',
  ),
  Destiny(
    countryID: 'usa',
    destiny: 'New York',
    imageURL: '$kRoot/usa/usa-new-york.jpg',
    illustration: '$kRoot/usa/usa-ny-illustration.jpg',
  ),
  Destiny(
    countryID: 'italy',
    destiny: 'Florence',
    imageURL: '$kRoot/italy/italy-florence.jpg',
  ),
  Destiny(
    countryID: 'italy',
    destiny: 'Milan',
    imageURL: '$kRoot/italy/italy-milan.jpg',
  ),
  Destiny(
    countryID: 'italy',
    destiny: 'Rome',
    imageURL: '$kRoot/italy/italy-rome.jpg',
    illustration: '$kRoot/italy/italy-illustration.jpg',
  ),
  Destiny(
    countryID: 'italy',
    destiny: 'Tuscan Hill Town',
    imageURL: '$kRoot/italy/italy-tuscan-hill-towns.jpg',
  ),
  Destiny(
    countryID: 'italy',
    destiny: 'Venice',
    imageURL: '$kRoot/italy/italy-venice.jpg',
  ),
  Destiny(
    countryID: 'england',
    destiny: 'London',
    imageURL: '$kRoot/uk/uk-london.jpg',
    illustration: '$kRoot/uk/uk-illustration.jpg',
  ),
  Destiny(
    countryID: 'england',
    destiny: 'Ancient Stonehenge',
    imageURL: '$kRoot/uk/uk-ancient-stonehenge.jpg',
  ),
  Destiny(
    countryID: 'england',
    destiny: 'Edinburgh',
    imageURL: '$kRoot/uk/uk-edinburgh.jpg',
  ),
  Destiny(
    countryID: 'england',
    destiny: 'Oxford',
    imageURL: '$kRoot/uk/uk-oxford.jpg',
  ),
  Destiny(
    countryID: 'england',
    destiny: 'Wonderful Windsor',
    imageURL: '$kRoot/uk/uk-wonderful-windsor.jpg',
  ),
  Destiny(
    countryID: 'france',
    destiny: 'Bordeaux',
    imageURL: '$kRoot/france/france-bordeaux.jpg?',
  ),
  Destiny(
    countryID: 'france',
    destiny: 'Champagne',
    imageURL: '$kRoot/france/france-champagne.jpg',
  ),
  Destiny(
    countryID: 'france',
    destiny: 'Nice',
    imageURL: '$kRoot/france/france-nice.jpg',
  ),
  Destiny(
    countryID: 'france',
    destiny: 'Paris',
    imageURL: '$kRoot/france/france-paris.jpg',
    illustration: '$kRoot/france/france-paris-illustration.jpg',
  ),
  Destiny(
    countryID: 'france',
    destiny: 'Provence',
    imageURL: '$kRoot/france/france-provence.jpg',
  ),
];
