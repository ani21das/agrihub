// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:flutter_application_1/routes.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  //const ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      // child: Center(
      //   child: Text(
      //     "Login Page",
      //     style: TextStyle(
      //       fontSize: 20,
      //       color: Colors.greenAccent,
      //       fontWeight: FontWeight.bold,
      //     ),
      //   ),
      // ),

      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          // ignore: duplicate_ignore
          children: [
            Image.asset(
              "assets/images/undraw_enter_uhqk.png",
              fit: BoxFit.cover,

              // just for checking scroll view using the warpper widget SingleChildscrollview
              //height: 800,
            ),
            // ignore: prefer_const_constructors
            SizedBox(
              height: 20.0,
            ),
            Text(
              "Welcome",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),

            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 20.0,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter 10 digit mobile number",
                      labelText: "Mobile number",
                    ),
                  ),
                  TextFormField(
                    obscureText: true, // by default false
                    decoration: InputDecoration(
                      hintText: "Enter 4 digit OTP",
                      labelText: "OTP",
                    ),
                  ),
                  SizedBox(
                    height: 35.0,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, MyRoutes.homeRoute);
                      },
                      child: Text("Login"),
                      style: TextButton.styleFrom(minimumSize: Size(1300, 35))),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
