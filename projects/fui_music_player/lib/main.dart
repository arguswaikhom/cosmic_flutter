import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fui_music_player/pages/home_page.dart';
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
      title: 'FUI Music Player',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        accentColor: Colors.purpleAccent,
        fontFamily: GoogleFonts.roboto().fontFamily,
        primaryIconTheme: IconThemeData(
          color: Colors.white70,
        ),
        appBarTheme: AppBarTheme(
          color: Colors.transparent,
          elevation: 0.0,
        ),
      ),
      home: HomePage(),
    );
  }
}
