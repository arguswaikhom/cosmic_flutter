import 'package:cosmic_flutter/resources/app_ingredients.dart';
import 'package:cosmic_flutter/views/pages/info_page.dart';
import 'package:cosmic_flutter/views/widgets/cosmic_page_bg_widget.dart';
import 'package:cosmic_flutter/views/widgets/ingredient_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return CosmicPageBgWidget(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Cosmic Flutter'),
          leading: IconButton(
            icon: const FaIcon(
              FontAwesomeIcons.meteor,
            ),
            onPressed: () {
              showDialog(
                context: context,
                builder: (dialogContext) {
                  return const AlertDialog(
                    backgroundColor: Colors.transparent,
                    contentPadding: EdgeInsets.zero,
                    content: InfoPage(),
                  );
                },
              );
            },
          ),
        ),
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
    );
  }
}
