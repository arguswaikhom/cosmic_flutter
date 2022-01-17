import 'package:cosmic_flutter/resources/app_assets.dart';
import 'package:cosmic_flutter/resources/app_ingredients.dart';
import 'package:cosmic_flutter/views/widgets/ingredient_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(kImgBg, fit: BoxFit.cover),
        Scaffold(
          appBar: AppBar(title: const Text('Cosmic Flutter')),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: ListView.builder(
              itemCount: appIngredients.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: IngredientWidget(
                  ingredient: appIngredients[index],
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => appIngredients[index].widget,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
