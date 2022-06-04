import 'package:fui_drink_order/models/drink_content.dart';
import 'package:fui_drink_order/models/drink_model.dart';

const kDrinks = [
  DrinkModel(
    discount: 30,
    name: 'Jungle Bird',
    type: 'Cocktails',
    price: 8,
    contents: [
      DrinkContent(quantity: 15, content: 'Alcohol'),
      DrinkContent(quantity: 10, content: 'Fruit'),
      DrinkContent(quantity: 40, content: 'Water'),
    ],
    imageURL:
        'https://github.com/arguswaikhom/ResourceBank/blob/master/arguswaikhom/fui_drink_order/Jungle%20Bird.jpg?raw=true',
  ),
  DrinkModel(
    discount: 25,
    name: 'Long Island Iced tea',
    type: 'Iced Tea',
    price: 5,
    contents: [
      DrinkContent(quantity: 15, content: 'Alcohol'),
      DrinkContent(quantity: 10, content: 'Fruit'),
      DrinkContent(quantity: 40, content: 'Water'),
    ],
    imageURL:
        'https://github.com/arguswaikhom/ResourceBank/blob/master/arguswaikhom/fui_drink_order/Long%20Island%20Iced%20tea.jpg?raw=true',
  ),
  DrinkModel(
    discount: 15,
    name: 'Gin Gin Mule',
    type: 'Gin',
    price: 10,
    contents: [
      DrinkContent(quantity: 15, content: 'Alcohol'),
      DrinkContent(quantity: 10, content: 'Fruit'),
      DrinkContent(quantity: 40, content: 'Water'),
    ],
    imageURL:
        'https://github.com/arguswaikhom/ResourceBank/blob/master/arguswaikhom/fui_drink_order/Gin%20Gin%20Mule.jpg?raw=true',
  ),
  DrinkModel(
    discount: 40,
    name: 'White Lady',
    type: 'Cocktail',
    price: 12,
    contents: [
      DrinkContent(quantity: 15, content: 'Alcohol'),
      DrinkContent(quantity: 10, content: 'Fruit'),
      DrinkContent(quantity: 40, content: 'Water'),
    ],
    imageURL:
        'https://github.com/arguswaikhom/ResourceBank/blob/master/arguswaikhom/fui_drink_order/White%20Lady.jpg?raw=true',
  ),
  DrinkModel(
    discount: 50,
    name: 'El Diable',
    type: 'Tequila',
    price: 8,
    contents: [
      DrinkContent(quantity: 15, content: 'Alcohol'),
      DrinkContent(quantity: 10, content: 'Fruit'),
      DrinkContent(quantity: 40, content: 'Water'),
    ],
    imageURL:
        'https://github.com/arguswaikhom/ResourceBank/blob/master/arguswaikhom/fui_drink_order/El%20Diable.jpg?raw=true',
  ),
  DrinkModel(
    discount: 20,
    name: 'Old Fashioned',
    type: 'Cocktail',
    price: 15,
    contents: [
      DrinkContent(quantity: 15, content: 'Alcohol'),
      DrinkContent(quantity: 10, content: 'Fruit'),
      DrinkContent(quantity: 40, content: 'Water'),
    ],
    imageURL:
        'https://github.com/arguswaikhom/ResourceBank/blob/master/arguswaikhom/fui_drink_order/Old%20Fashioned.jpg?raw=true',
  ),
];
