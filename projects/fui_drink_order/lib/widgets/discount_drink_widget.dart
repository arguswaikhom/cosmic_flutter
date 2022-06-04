import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:fui_drink_order/models/drink_model.dart';
import 'package:fui_drink_order/resources/app_colors.dart';
import 'package:fui_drink_order/widgets/circular_container.dart';

class DiscountDrinkWidget extends StatelessWidget {
  final DrinkModel drink;

  const DiscountDrinkWidget({
    Key? key,
    required this.drink,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(32.0),
      child: Stack(
        fit: StackFit.passthrough,
        children: [
          CachedNetworkImage(
            imageUrl: drink.imageURL,
            fit: BoxFit.cover,
          ),
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.center,
                  colors: [
                    Colors.black87,
                    Colors.transparent,
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 0.0,
            left: 0.0,
            child: CircularContainer(
              margin: EdgeInsets.all(36.0),
              backgroundColor: AppColor.accentColor,
              padding: EdgeInsets.all(12.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: drink.discount.toString(),
                          style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        TextSpan(text: ' %'),
                      ],
                    ),
                  ),
                  Text(
                    'Discount',
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.white38,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 0.0,
            bottom: 0.0,
            child: Container(
              margin: EdgeInsets.all(36.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    drink.name,
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    drink.type,
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
