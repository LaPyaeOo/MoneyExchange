import 'package:flutter/material.dart';

class BuildThemeData {
  double fs140 = 140.0;
  double fs28 = 28.0;
  double fs24 = 24.0;
  double fs22 = 22.0;
  double fs20 = 20.0;
  double fs18 = 18.0;
  double fs17 = 17.0;
  double fs16 = 16.0;
  double fs15 = 15.0;
  double fs14 = 14.0;
  double fs13 = 13.0;
  double fs12 = 12.0;
  double fs11 = 11.0;
  double fs10 = 10.0;

  String zawgyi = "zawgyi";

  ThemeData firstTD() {
    return ThemeData(
      scaffoldBackgroundColor: Color(0xFFF9FBE7),
      primaryColor: Color(0xFF009688), // AppBar and Icon
      accentColor: Color(0xFF78909C),
      canvasColor: Color(0xFF11151b),
      cardColor: Color(0xFFffffff),
      buttonColor: Color(0xFF2196F3),
      indicatorColor: Color(0xFFe5dbd5),
      dividerColor: Color(0xFF35343a),
      brightness: Brightness.light,
      textTheme: TextTheme(
        headline: TextStyle(
          fontSize: fs140,
          fontFamily: zawgyi,
          color: Color(0xFF57A11E),
        ),
        subhead: TextStyle(
          fontFamily: zawgyi,
          fontSize: fs16,
          color: Color(0xFF000000),
        ),
        display1: TextStyle(
          fontFamily: zawgyi,
          fontSize: fs24,
          color: Colors.black,
        ),
        display2: TextStyle(
          fontFamily: zawgyi,
          fontSize: fs16,
          color: Color(0xFF57A11E),
        ),
        body1: TextStyle(
          fontFamily: zawgyi,
          fontSize: fs16,
          color: Color(0xFF7a7a7d),
        ),
        body2: TextStyle(
          fontFamily: zawgyi,
          fontSize: fs18,
          color: Color(0xFF000000),
        ),
        caption: TextStyle(
          fontFamily: zawgyi,
          fontSize: fs10,
          color: Color(0xFF7a7a7d),
        ),
        button: TextStyle(
          fontFamily: zawgyi,
          fontSize: fs10,
          color: Color(0xFF4DB6AC),
        ),
      ),
    );
  }

  ThemeData secondTD() {
    return ThemeData(
        fontFamily: 'zawgyi',
        primarySwatch: Colors.blue,
        brightness: Brightness.dark);
  }
}
