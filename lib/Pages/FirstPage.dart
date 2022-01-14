// ignore_for_file: , use_key_in_widget_constructors, must_be_immutable, prefer_const_constructors, file_names, prefer_const_constructors_in_immutables, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:ourstore/ResponsiveHelper.dart';
import 'package:ourstore/widgets/Appbar.dart';

class FirstPage extends StatefulWidget {
  final String Rank;
  final String Date;
  final String Price;
  dynamic image;
  final String Info;
  final String Quan;
  FirstPage({
    required this.Rank,
    required this.Date,
    required this.Price,
    this.image,
    required this.Info,
    required this.Quan,
  });

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    ResponsiveHelper(context);
    return Scaffold(
      appBar: buildAppbar(context),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: SizedBox(
            height: ResponsiveHelper.fromheight(1),
            width: ResponsiveHelper.fromwidth(1.2),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                            child: Image.asset(
                              widget.image,
                            ),
                            width: ResponsiveHelper.fromwidth(.5),
                            height: ResponsiveHelper.fromheight(.3),
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(100)))),
                        Text(widget.Price,
                            style: TextStyle(
                                fontSize: ResponsiveHelper.fromfontSize(.03),
                                fontWeight: FontWeight.bold,
                                color: Colors.black)),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(right: 2),
                                child: Text(
                                  'Do You Like that ?',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize:
                                          ResponsiveHelper.fromfontSize(.025)),
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.thumb_up),
                                color: Colors.lightBlue,
                                iconSize: 35,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text('product Rank:   ',
                                  style: TextStyle(
                                      fontSize:
                                          ResponsiveHelper.fromfontSize(.02),
                                      fontWeight: FontWeight.bold,
                                      color: Colors.lightBlue)),
                              Text(widget.Rank,
                                  style: TextStyle(
                                      fontSize:
                                          ResponsiveHelper.fromfontSize(.02),
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black))
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: Text('Expiration date',
                              style: TextStyle(
                                  fontSize: ResponsiveHelper.fromfontSize(.02),
                                  fontWeight: FontWeight.bold,
                                  color: Colors.lightBlue)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 8, top: 8),
                          child: Text(widget.Date,
                              style: TextStyle(
                                  fontSize: ResponsiveHelper.fromfontSize(.02),
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: Text('Call us:   ',
                              style: TextStyle(
                                  fontSize: ResponsiveHelper.fromfontSize(.02),
                                  fontWeight: FontWeight.bold,
                                  color: Colors.lightBlue)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 8, top: 8),
                          child: Text(widget.Info,
                              style: TextStyle(
                                  fontSize: ResponsiveHelper.fromfontSize(.02),
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: Text('Available Quantity :   ',
                              style: TextStyle(
                                  fontSize: ResponsiveHelper.fromfontSize(.02),
                                  fontWeight: FontWeight.bold,
                                  color: Colors.lightBlue)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 8),
                          child: Text(widget.Quan,
                              style: TextStyle(
                                  fontSize: ResponsiveHelper.fromfontSize(.02),
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black)),
                        )
                      ],
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 20, top: 20, left: 20),
                  child: TextField(
                    obscureText: false,
                    decoration: InputDecoration(
                      labelText: "Add comment",
                      labelStyle: TextStyle(
                        fontSize: ResponsiveHelper.fromfontSize(.03),
                      ),
                      hintStyle: TextStyle(
                          color: Colors.black,
                          fontSize: ResponsiveHelper.fromfontSize(.025),
                          fontWeight: FontWeight.w500),
                    ),
                    style: TextStyle(
                        fontSize: ResponsiveHelper.fromfontSize(.025)),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
