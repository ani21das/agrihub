import 'package:flutter/material.dart';
import 'package:flutter_application_1/home_page.dart';
import 'package:flutter_application_1/routes.dart';
import 'package:flutter_application_1/themes.dart';
//import 'package:google_fonts/google_fonts.dart';
import 'login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  //const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: Homepage(),

      // for light theme
      // themeMode: ThemeMode.light,
      // theme: ThemeData(primarySwatch: Colors.lightGreen),

      //for dark theme

      // themeMode: ThemeMode.dark,
      // darkTheme: ThemeData(
      //   brightness: Brightness.dark,
      // ),

      themeMode: ThemeMode.light,
      theme: Mytheme.lightTheme(context),
      darkTheme: Mytheme.darkTheme(context),

      // for debug icon on phone

      debugShowCheckedModeBanner: false,

      //routes

      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => const Login(),
        MyRoutes.homeRoute: (context) => const Homepage(),
        MyRoutes.loginRoute: (context) => const Login()
      },
    );
  }
}
