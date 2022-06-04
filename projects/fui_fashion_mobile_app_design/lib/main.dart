import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fui_fashion_mobile_app_design/pages/fashion_week_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fashion Mobile App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: GoogleFonts.ubuntu().fontFamily,
      ),
      home: FashionWeekPage(),
    );
  }
}
