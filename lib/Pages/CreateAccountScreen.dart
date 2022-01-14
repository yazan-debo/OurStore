// ignore_for_file: deprecated_member_use, prefer_const_constructors, unnecessary_new, use_key_in_widget_constructors, must_be_immutable, prefer_final_fields, unused_field, avoid_print, file_names

import 'package:flutter/material.dart';
import 'package:ourstore/Pages/HomePage.dart';
import 'package:ourstore/Pages/LoginScreen.dart';
import 'package:ourstore/widgets/AnimatinRoute.dart';

class CreateAccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: 45.0,
              ),
              Image(
                image: AssetImage("images/logo.png"),
                width: 250.0,
                height: 150.0,
                alignment: Alignment.center,
              ),
              SizedBox(
                height: 1.0,
              ),
              Text(
                " ourstore ",
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w500),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 1.0,
              ),
              TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: "Name",
                  labelStyle: TextStyle(
                    fontSize: 20.0,
                  ),
                  hintStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 15.0,
                  ),
                ),
                style:
                    TextStyle(fontSize: 14.0, fontFamily: "ApkHu Fonts  112"),
              ),
              SizedBox(
                height: 1.0,
              ),
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: "Email",
                  labelStyle: TextStyle(
                    fontSize: 20.0,
                  ),
                  hintStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 15.0,
                  ),
                ),
                style:
                    TextStyle(fontSize: 14.0, fontFamily: "ApkHu Fonts  112"),
              ),
              SizedBox(
                height: 1.0,
              ),
              TextField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  labelText: "Phone Number",
                  labelStyle: TextStyle(
                    fontSize: 20.0,
                  ),
                  hintStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 15.0,
                  ),
                ),
                style:
                    TextStyle(fontSize: 14.0, fontFamily: "ApkHu Fonts  112"),
              ),
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 1.0,
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "PassWord",
                        labelStyle: TextStyle(
                          fontSize: 20.0,
                        ),
                        hintStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 15.0,
                            fontFamily: "ApkHu Fonts  112"),
                      ),
                      style: TextStyle(fontSize: 14.0),
                    ),
                    SizedBox(
                      height: 25.0,
                    ),
                    RaisedButton(
                      color: Colors.blueAccent,
                      textColor: Colors.black,
                      child: SizedBox(
                        height: 50.0,
                        child: Center(
                          child: Text(
                            "Create Account",
                            style: TextStyle(
                                fontSize: 18.0, fontFamily: "ApkHu Fonts  051"),
                          ),
                        ),
                      ),
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(24.0),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context, AnimationRoute(widget: HomePage()));
                      },
                    ),
                  ],
                ),
              ),
              FlatButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                },
                child: Text("Already have an Account? Login Here"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
