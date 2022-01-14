// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, must_be_immutable, non_constant_identifier_names, camel_case_types, prefer_const_literals_to_create_immutables, file_names, unused_field, avoid_print

import 'package:flutter/material.dart';
import 'package:ourstore/Pages/FirstPage.dart';
import 'package:ourstore/ResponsiveHelper.dart';
import 'package:ourstore/widgets/AnimatinRoute.dart';

class Product extends StatefulWidget {
  final String rank;
  final String date;
  final String price;
  final String text;
  dynamic imag;
  final String info;
  final String quan;
  Product({
    required this.text,
    this.imag,
    required this.rank,
    required this.date,
    required this.price,
    required this.info,
    required this.quan,
  });

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    ResponsiveHelper(context);
    return GestureDetector(
        onTap: () {
          _incrementCounter;
          print(_counter);
          Navigator.push(
              context,
              AnimationRoute(
                  widget: FirstPage(
                Rank: widget.rank,
                Date: widget.date,
                Price: widget.price,
                Info: widget.info,
                Quan: widget.quan,
                image: widget.imag,
              )));
        },
        child: Container(
          width: ResponsiveHelper.fromwidth(.85),
          padding: EdgeInsets.all(10.0),
          margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            color: Colors.lightBlue,
          ),
          height: ResponsiveHelper.fromheight(.3),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                margin: EdgeInsets.all(5),
                height: ResponsiveHelper.fromheight(.3),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(100),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(10, 20),
                          blurRadius: 20,
                          color: Colors.black12)
                    ]),
              ),
              Positioned(
                  height: ResponsiveHelper.fromheight(.25),
                  width: ResponsiveHelper.fromwidth(.4),
                  right: 20.0,
                  child: Container(
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.symmetric(
                      horizontal: 1,
                    ),
                    height: ResponsiveHelper.fromheight(.25),
                    width: ResponsiveHelper.fromwidth(.3),
                    child: Image.asset(
                      widget.imag,
                      fit: BoxFit.contain,
                    ),
                  )),
              Positioned(
                  height: ResponsiveHelper.fromheight(.15),
                  width: ResponsiveHelper.fromwidth(.3),
                  right: 200.0,
                  child: SizedBox(
                    height: ResponsiveHelper.fromheight(.1),
                    width: ResponsiveHelper.fromwidth(.3),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        widget.text,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: ResponsiveHelper.fromfontSize(.02),
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                  )),
              Positioned(
                  bottom: -5.5,
                  right: 10,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.zero,
                        child: Icon(Icons.remove_red_eye),
                      ),
                      Padding(
                        padding: EdgeInsets.zero,
                        child: Text(
                          '$_counter',
                          style: TextStyle(
                              fontSize: ResponsiveHelper.fromfontSize(.025)),
                        ),
                      ),
                    ],
                  ))
            ],
          ),
        ));
  }
}
// class Counter extends StatefulWidget {
//   const Counter({ Key? key }) : super(key: key);

//   @override
//   _CounterState createState() => _CounterState();
// }

// class _CounterState extends State<Counter> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
 
//       _counter++;
//     });
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Container(
      
//     );
//   }
// }