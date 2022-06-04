import 'package:fui_drink_order/models/drink_content.dart';

class DrinkModel {
  final String name;
  final String type;
  final int price;
  final String imageURL;
  final int discount;
  final List<DrinkContent> contents;

  const DrinkModel({
    required this.name,
    required this.type,
    required this.price,
    required this.imageURL,
    required this.contents,
    this.discount = 0,
  });
}
