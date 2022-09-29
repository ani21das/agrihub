// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, duplicate_ignore

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.purple,
        child: ListView(
          children: [
            // ignore: prefer_const_constructors
            DrawerHeader(
                padding: EdgeInsets.zero,
                //margin: EdgeInsets.zero,
                // ignore: prefer_const_constructors,
                child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.zero,

                  //decoration: BoxDecoration(
                  //color: Colors.white,
                  // ),

                  // ignore: prefer_const_constructors
                  accountName: Text("Anirban Das"),
                  // ignore: prefer_const_constructors
                  accountEmail: Text("anirban21das@gmail.com"),
                  //currentAccountPicture: Image.asset("assets/images/15020.jpg"),
                  currentAccountPicture: CircleAvatar(
                    radius: 25.0,
                    child: ClipRRect(
                      child: Image.asset('assets/images/15020.jpg'),
                      borderRadius: BorderRadius.circular(60.0),
                    ),
                  ),
                )),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),

            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text(
                "Profile",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),

            ListTile(
              leading: Icon(
                CupertinoIcons.calendar_today,
                color: Colors.white,
              ),
              title: Text(
                "Daily Tips",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.plus_rectangle,
                color: Colors.white,
              ),
              title: Text(
                "Crop Health",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.camera,
                color: Colors.white,
              ),
              title: Text(
                "Disease Detection",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.tornado,
                color: Colors.white,
              ),
              title: Text(
                "Weather Update",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,
              ),
              title: Text(
                "Contact us",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
