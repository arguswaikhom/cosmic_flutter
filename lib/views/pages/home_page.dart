import 'package:cosmic_flutter/resources/app_assets.dart';
import 'package:cosmic_flutter/resources/app_ingredients.dart';
import 'package:cosmic_flutter/src/constants/app_nav_list.dart';
import 'package:cosmic_flutter/src/constants/app_string.dart';
import 'package:cosmic_flutter/src/models/expandable_nav_group.dart';
import 'package:cosmic_flutter/src/models/expansion_entry.dart';
import 'package:cosmic_flutter/src/widgets/expansion_entry_list.dart';
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
          appBar: AppBar(title: const Text(AppString.appName)),
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

  Widget _getBodyContent() {
    final navList = AppNavList.list;

    return ExpansionEntryList(
      children: navList.map<ExpansionEntry>((ExpandableNavGroup nav) {
        return ExpansionEntry(
          headerBuilder: (bool isExpanded) {
            return ListTile(
              title: Text(nav.label),
              leading: Icon(nav.icon),
            );
          },
          body: _getExpandedChildren(nav),
          isExpanded: nav.isExpanded,
        );
      }).toList(),
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          navList[index].isExpanded = !isExpanded;
        });
      },
    );
  }

  Widget _getExpandedChildren(final ExpandableNavGroup nav) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: nav.children.length,
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.only(left: 42, bottom: 4, right: 42),
          child: InkWell(
            child: Column(
              children: [
                Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: Text(
                    nav.children[index].label,
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Divider()
              ],
            ),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => nav.children[index].page,
              ),
            ),
          ),
        );
      },
    );
  }
}
