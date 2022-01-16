import 'package:cached_network_image/cached_network_image.dart';
import 'package:cosmic_flutter/models/ingredient.dart';
import 'package:flutter/material.dart';

class IngredientWidget extends StatelessWidget {
  final double height;
  final double width;
  final Ingredient ingredient;
  final void Function()? onTap;

  const IngredientWidget({
    required this.ingredient,
    this.height = 280.0,
    this.width = double.infinity,
    this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(24.0),
      child: InkWell(
        onTap: onTap,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: height,
              width: width,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(24.0),
                child: CachedNetworkImage(
                  imageUrl: ingredient.image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  ingredient.title,
                  style: Theme.of(context).textTheme.subtitle1?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
