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
        title: const Text("Farm Easy"),
      ),
      // body: Center(
      //   child: Text("Welcome to day $day of learning flutter by $named"),
      // ),
      drawer: const MyDrawer(),
    );
  }
}
