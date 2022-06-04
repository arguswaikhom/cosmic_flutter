import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fui_drink_order/pages/home_page.dart';
import 'package:fui_drink_order/resources/app_colors.dart';
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
      title: 'FUI Drink Order',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: GoogleFonts.lato().fontFamily,
        accentColor: AppColor.accentColor,
        scaffoldBackgroundColor: AppColor.backgroundColor,
        appBarTheme: AppBarTheme(
          elevation: 0.0,
          backgroundColor: Colors.transparent,
        ),
        textTheme: Theme.of(context)
            .textTheme
            .apply(
              bodyColor: AppColor.primaryTextColor,
              displayColor: AppColor.primaryTextColor,
            )
            .copyWith(
              headline3: TextStyle(
                fontWeight: FontWeight.w600,
                color: AppColor.primaryTextColor,
              ),
              headline5: TextStyle(
                fontWeight: FontWeight.w600,
                color: AppColor.primaryTextColor,
              ),
              bodyText1: TextStyle(
                fontSize: 17.0,
                color: AppColor.secondaryTextColor,
              ),
              subtitle1: TextStyle(
                color: AppColor.secondaryTextColor,
              ),
              subtitle2: TextStyle(
                fontSize: 12.0,
                color: AppColor.secondaryTextColor,
              ),
            ),
      ),
      home: HomePage(),
    );
  }
}
