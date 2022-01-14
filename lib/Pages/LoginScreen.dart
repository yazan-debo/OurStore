// ignore_for_file: deprecated_member_use, prefer_const_constructors, unnecessary_new, use_key_in_widget_constructors, sized_box_for_whitespace, file_names, avoid_print
import 'package:flutter/material.dart';
import 'package:ourstore/Pages/CreateAccountScreen.dart';
import 'package:ourstore/Pages/HomePage.dart';
import 'package:ourstore/widgets/AnimatinRoute.dart';

class LoginScreen extends StatelessWidget {
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
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: "E-mail",
                  labelStyle: TextStyle(
                    fontSize: 20.0,
                  ),
                  hintStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 15.0,
                  ),
                ),
                style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500),
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
                            fontWeight: FontWeight.w500),
                      ),
                      style: TextStyle(fontSize: 14.0),
                    ),
                    SizedBox(
                      height: 25.0,
                    ),
                    RaisedButton(
                      color: Colors.blueAccent,
                      textColor: Colors.black,
                      child: Container(
                        height: 50.0,
                        child: Center(
                          child: Text(
                            "Login",
                            style: TextStyle(
                                fontSize: 18.0, fontWeight: FontWeight.w500),
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
                  Navigator.push(
                      context, AnimationRoute(widget: CreateAccountScreen()));
                },
                child: Text("Creat an Account"),
              ),
              FlatButton(
                onPressed: () {},
                child: Text("Forget Your Password?"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
