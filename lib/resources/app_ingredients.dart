import 'package:cosmic_flutter/models/ingredient.dart';
import 'package:fui_city_travel_app/main.dart' as fui_city_travel_app;
import 'package:fui_drink_order/main.dart' as fui_drink_order;
import 'package:fui_fashion_mobile_app_design/main.dart'
    as fui_fashion_mobile_app_design;
import 'package:fui_music_player/main.dart' as fui_music_player;

List<Ingredient> appIngredients = [
  Ingredient(
    widget: const fui_city_travel_app.MyApp(),
    title: 'Destiny - City travel',
    image:
        'https://github.com/arguswaikhom/ResourceBank/blob/master/arguswaikhom/fwf/1.png?raw=true',
    source: 'source',
  ),
  Ingredient(
    widget: fui_drink_order.MyApp(),
    title: 'Tonight - Drink Order',
    image:
        'https://github.com/arguswaikhom/ResourceBank/blob/master/arguswaikhom/fwf/3.png?raw=true',
    source: 'source',
  ),
  Ingredient(
    widget: fui_fashion_mobile_app_design.MyApp(),
    title: 'Model Checkout',
    image:
        'https://github.com/arguswaikhom/ResourceBank/blob/master/arguswaikhom/fwf/4.png?raw=true',
    source: 'source',
  ),
  Ingredient(
    widget: fui_music_player.MyApp(),
    title: 'Music playlist & controller',
    image:
        'https://github.com/arguswaikhom/ResourceBank/blob/master/arguswaikhom/fwf/2.png?raw=true',
    source: 'source',
  ),
];
