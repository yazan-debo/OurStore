// ignore_for_file: prefer_const_constructors, file_names, prefer_const_literals_to_create_immutables, curly_braces_in_flow_control_structures, unnecessary_string_interpolations, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ourstore/Pages/LoginScreen.dart';
import 'package:ourstore/Pages/ProfilePage.dart';
//import 'package:ourstore/Pages/Settings.dart';

import 'package:ourstore/ResponsiveHelper.dart';
import 'package:ourstore/widgets/AnimatinRoute.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    ResponsiveHelper(context);

    return Scaffold(
      body: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(
                'accountName',
                style: TextStyle(fontSize: ResponsiveHelper.fromfontSize(.04)),
              ),
              accountEmail: Text(
                'accountEmail',
                style: Theme.of(context).textTheme.headline6,
              ),
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('images/background.png'),
                fit: BoxFit.cover,
              )),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text(
                'My profile',
                style: TextStyle(fontSize: ResponsiveHelper.fromfontSize(.03)),
              ),
              onTap: () {
                Navigator.push(context, AnimationRoute(widget: ProfilePage()));
              },
            ),
            Divider(
              color: Colors.blue,
              thickness: 1,
            ),
            ListTile(
              leading: Icon(Icons.search),
              title: Text(
                'Search for product',
                style: TextStyle(fontSize: ResponsiveHelper.fromfontSize(.028)),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.dark_mode),
              title: Text(
                'Dark Mode',
                style: TextStyle(fontSize: ResponsiveHelper.fromfontSize(.028)),
              ),
              onTap: () {
                if (Get.isDarkMode)
                  Get.changeTheme(ThemeData.light());
                else
                  Get.changeTheme(ThemeData.dark());
              },
            ),
            ListTile(
              leading: Icon(Icons.login),
              title: Text(
                'Sign in/Make Account',
                style:
                    TextStyle(fontSize: ResponsiveHelper.fromfontSize(.02391)),
              ),
              onTap: () {
                Navigator.push(context, AnimationRoute(widget: LoginScreen()));
              },
            ),
            ListTile(
              leading: Icon(Icons.call),
              title: Text(
                'Call Us',
                style: TextStyle(fontSize: ResponsiveHelper.fromfontSize(.03)),
              ),
              onTap: () {},
            ),
            Divider(
              color: Colors.blue,
              thickness: 1,
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text(
                'Sign Out',
                style: TextStyle(fontSize: ResponsiveHelper.fromfontSize(.03)),
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
