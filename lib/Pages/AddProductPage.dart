// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:ourstore/ResponsiveHelper.dart';
import 'package:ourstore/widgets/Appbar.dart';

class AddProductPage extends StatefulWidget {
  const AddProductPage({Key? key}) : super(key: key);

  @override
  State<AddProductPage> createState() => _AddProductPageState();
}

class _AddProductPageState extends State<AddProductPage> {
  var SellectRank = "Food";
  @override
  Widget build(BuildContext context) {
    ResponsiveHelper(context);
    return Scaffold(
      appBar: buildAppbar(context),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Positioned(
                child: Padding(
                  padding: EdgeInsets.all(40.0),
                  child: Stack(
                    children: [
                      Container(
                        height: ResponsiveHelper.fromheight(.35),
                        width: ResponsiveHelper.fromwidth(.7),
                        decoration: BoxDecoration(
                            color: Colors.white38,
                            border: Border.all(color: Colors.lightBlue),
                            borderRadius: BorderRadius.circular(100)),
                      ),
                      Positioned(
                          top: ResponsiveHelper.fromheight(.12),
                          right: ResponsiveHelper.fromwidth(.10),
                          child: Padding(
                            padding: EdgeInsets.zero,
                            child: Text(
                              'Add Photo',
                              style: TextStyle(
                                  fontSize: ResponsiveHelper.fromfontSize(.05)),
                            ),
                          ))
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: "Product Name",
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
              ),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: "Expiration date",
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
              ),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: "phone number or E-mail",
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
              ),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: "Available Quantity",
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
              ),
              Padding(
                padding: EdgeInsets.zero,
                child: DropdownButton(
                  items: ["Food", "Medical_Stuff", "Electronics"]
                      .map((e) => DropdownMenuItem(
                            child: Text("$e"),
                            value: e,
                          ))
                      .toList(),
                  onChanged: (val) {
                    setState(() {
                      SellectRank = val.toString();
                    });
                  },
                  value: SellectRank,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
