import 'package:flutter/material.dart';

class ToggleTabBar extends StatelessWidget implements PreferredSizeWidget {
  final List<String> labels;
  final Color selectedLabelColor;
  final Color unselectedLabelColor;
  final Color backgroundColor;
  final bool isScrollable;
  final Color? accentColor;

  const ToggleTabBar({
    Key? key,
    this.labels = const <String>[],
    this.selectedLabelColor = Colors.white,
    this.unselectedLabelColor = Colors.black,
    this.backgroundColor = const Color(0xFFE0E0E0),
    this.isScrollable = false,
    this.accentColor,
  }) : super(key: key);

  _getTabs() => labels.map((e) => Tab(text: e)).toList();

  @override
  Widget build(BuildContext context) {
    final indicator = BoxDecoration(
      borderRadius: BorderRadius.circular(25.0),
      color: accentColor == null ? Theme.of(context).accentColor : accentColor,
    );

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Container(
          height: 45,
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(
              25.0,
            ),
          ),
          child: TabBar(
            isScrollable: isScrollable,
            indicator: indicator,
            labelColor: selectedLabelColor,
            unselectedLabelColor: unselectedLabelColor,
            tabs: _getTabs(),
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
