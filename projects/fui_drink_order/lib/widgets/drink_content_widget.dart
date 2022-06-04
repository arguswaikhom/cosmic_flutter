import 'package:flutter/material.dart';
import 'package:fui_drink_order/resources/app_colors.dart';

class DrinkContentWidget extends StatelessWidget {
  final double minWidth;
  final int quantityInPercentage;
  final String ingredient;

  const DrinkContentWidget({
    Key? key,
    required this.quantityInPercentage,
    required this.ingredient,
    this.minWidth = 0.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        minWidth: minWidth,
      ),
      child: Container(
        padding: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          border: Border.all(
            width: 2.0,
            color: AppColor.accentColor,
          ),
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              '$quantityInPercentage%',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
                color: AppColor.primaryTextColor,
              ),
            ),
            Text(
              ingredient,
              style: TextStyle(
                fontSize: 12.0,
                color: AppColor.secondaryTextColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
