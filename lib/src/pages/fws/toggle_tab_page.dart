import 'package:cosmic_flutter/src/constants/app_string.dart';
import 'package:cosmic_flutter/src/widgets/toggle_tab_bar.dart';
import 'package:flutter/material.dart';

class ToggleTabPage extends StatefulWidget {
  @override
  _ToggleTabPageState createState() => _ToggleTabPageState();
}

class _ToggleTabPageState extends State<ToggleTabPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text(AppString.titleToggleTab),
          bottom: ToggleTabBar(
            labels: ['First', 'Second', 'Third'],
          ),
        ),
        body: TabBarView(
          children: [
            Center(child: Text('First')),
            Center(child: Text('Second')),
            Center(child: Text('Third')),
          ],
        ),
      ),
    );
  }
}
