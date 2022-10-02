import 'package:flutter/material.dart';

class Mytheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.blueGrey,

      // ignore: prefer_const_constructors
      appBarTheme: AppBarTheme(
        color: Colors.white,
        elevation: 0.0,
        // ignore: prefer_const_constructors
        iconTheme: IconThemeData(color: Colors.black),
        // ignore: deprecated_member_use
        textTheme: Theme.of(context).textTheme,
      )

      //fontFamily: GoogleFonts.lato().fontFamily,
      //primaryTextTheme: GoogleFonts.latoTextTheme()), only on primary text theme
      );

  static ThemeData darkTheme(BuildContext context) => ThemeData(
        brightness: Brightness.dark,
      );
}
