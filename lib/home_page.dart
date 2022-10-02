import 'package:flutter/material.dart';
import 'package:flutter_application_1/drawer.dart';

class Homepage extends StatelessWidget {
  //const Homepage({ Key? key }) : super(key: key);
  final int day = 1;
  final String named = "xyz";

  const Homepage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        // ignore: prefer_const_constructors
        iconTheme: IconThemeData(color: Colors.black),
        title: const Text(
          "Farm Easy",
        ),
      ),

      // ignore: prefer_const_constructors
      drawer: MyDrawer(),
    );
  }
}
