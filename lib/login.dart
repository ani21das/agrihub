// ignore_for_file: prefer_const_constructors, duplicate_ignore, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_application_1/routes.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

// _ meaning in dart is to be private anything
class _LoginState extends State<Login> {
  //const ({ Key? key }) : super(key: key);

  String name = "";
  bool changeButton = false;

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
              "Welcome $name",
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
                      hintText: "Enter Your Name",
                      labelText: "Name",
                    ),
                    onChanged: (value) {
                      name = value;
                      setState(() {
                        // called the built method & don't call build mathody by build(context) otherwise ....
                      });
                    },
                  ),
                  TextFormField(
                    obscureText: true, // by default false
                    decoration: InputDecoration(
                      hintText: "Enter 10 digit mobile number",
                      labelText: "Mobile number",
                    ),
                  ),
                  SizedBox(
                    height: 35.0,
                  ),

                  // simple button
                  // ElevatedButton(
                  //     onPressed: () {
                  //       Navigator.pushNamed(context, MyRoutes.homeRoute);
                  //     },
                  //     child: Text("Login"),
                  //     style: TextButton.styleFrom(minimumSize: Size(1300, 35))),

                  // Animated button
                  InkWell(
                    onTap: () async {
                      setState(() {
                        changeButton = true;
                      });
                      await Future.delayed(Duration(seconds: 1));
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      width: changeButton ? 50 : 140,
                      height: 50,
                      //color: Colors.deepPurple, // By default white
                      alignment: Alignment.center,
                      child: changeButton
                          ? Icon(
                              Icons.done,
                              color: Colors.white,
                            )
                          : Text(
                              "Login",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                      decoration: BoxDecoration(
                        //Dont use color on both here and container

                        borderRadius:
                            BorderRadius.circular(changeButton ? 50 : 8),

                        //else we can use it
                        //shape:changeButton ? BoxShape.circle : BoxShape.rectangle,

                        color: Colors.deepPurple,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
