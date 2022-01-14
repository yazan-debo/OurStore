// ignore_for_file: prefer_const_constructors, file_names, non_constant_identifier_names, unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:ourstore/widgets/NavBar.dart';
import 'package:ourstore/widgets/Product.dart';

import '../ResponsiveHelper.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var SellectLang = "EN";
  @override
  Widget build(BuildContext context) {
    ResponsiveHelper(context);
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        title: Text(
          'Our Store',
        ),
      ),
      body: Center(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 50, left: 8),
                  child: Text(
                    'Change Languge :',
                    style: TextStyle(
                        color: Colors.lightBlue,
                        fontSize: ResponsiveHelper.fromfontSize(.025)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 100),
                  child: DropdownButton(
                    items: ["EN", "AR", "FR"]
                        .map((e) => DropdownMenuItem(
                              child: Text("$e"),
                              value: e,
                            ))
                        .toList(),
                    onChanged: (val) {
                      setState(() {
                        SellectLang = val.toString();
                      });
                    },
                    value: SellectLang,
                  ),
                ),
              ],
            ),
            Divider(
              color: Colors.blue,
              thickness: 1,
              endIndent: 315,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Food',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: ResponsiveHelper.fromfontSize(.025)),
                  ),
                ),
              ],
            ),
            Divider(
              color: Colors.blue,
              thickness: 1,
              endIndent: 315,
            ),
            SizedBox(
              height: ResponsiveHelper.fromheight(.3),
              width: ResponsiveHelper.fromwidth(1),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Product(
                    quan: '12',
                    info: 'yazan@gmail.com',
                    price: '85',
                    date: '12/6/2023',
                    rank: 'Food',
                    imag: 'images/1.png',
                    text: 'Tomato paste',
                  ),
                  Product(
                    quan: '20',
                    info: 'Doaa@gmail.com',
                    price: '35',
                    date: '7/2/2022',
                    rank: 'Food',
                    imag: 'images/2.png',
                    text: 'Cream cheese',
                  ),
                  Product(
                    quan: '18',
                    info: 'laith@gmail.com',
                    price: '70',
                    date: '30/8/2023',
                    rank: 'Food',
                    imag: 'images/3.png',
                    text: 'Mushroom',
                  ),
                  Product(
                    quan: '25',
                    info: 'Alaa@gmail.com',
                    price: '85',
                    date: '31/12/2024',
                    rank: 'Food',
                    imag: 'images/4.png',
                    text: 'Mortadella',
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Medical Stuff',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: ResponsiveHelper.fromfontSize(.025)),
                  ),
                ),
              ],
            ),
            Divider(
              color: Colors.blue,
              thickness: 1,
              endIndent: 225,
            ),
            SizedBox(
              height: ResponsiveHelper.fromheight(.3),
              width: ResponsiveHelper.fromwidth(1),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Product(
                    quan: '30',
                    info: 'yazan@gmail.com',
                    price: '40',
                    date: '15/4/2023',
                    rank: 'Medical Stuff',
                    imag: 'images/Medical Headphones.png',
                    text: 'Medical Headphones',
                  ),
                  Product(
                    quan: '17',
                    info: 'Doaa@gmail.com',
                    price: '45',
                    date: '28/3/2025',
                    rank: 'Medical Stuff',
                    imag: 'images/sanitizer.png',
                    text: 'sanitizer',
                  ),
                  Product(
                    quan: '100',
                    info: 'laith@gmail.com',
                    price: '10',
                    date: '10/8/2023',
                    rank: 'Medical Stuff',
                    imag: 'images/Medical patches.png',
                    text: 'Medical patches',
                  ),
                  Product(
                    quan: '200',
                    info: 'Alaa@gmail.com',
                    price: '100',
                    date: '31/12/2024',
                    rank: 'Medical Stuff',
                    imag: 'images/PureCotton.png',
                    text: 'PureCotton',
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Electronics',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: ResponsiveHelper.fromfontSize(.025)),
                  ),
                ),
              ],
            ),
            Divider(
              color: Colors.blue,
              thickness: 1,
              endIndent: 250,
            ),
            SizedBox(
              height: ResponsiveHelper.fromheight(.3),
              width: ResponsiveHelper.fromwidth(1),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Product(
                    quan: '45',
                    info: 'yazan@gmail.com',
                    price: '40',
                    date: '30/9/2023',
                    rank: 'Electronics',
                    imag: 'images/solar charger.png',
                    text: 'solar charger',
                  ),
                  Product(
                    quan: '80',
                    info: 'Doaa@gmail.com',
                    price: '35',
                    date: '28/12/2025',
                    rank: 'Electronics',
                    imag: 'images/Thumb Grips.png',
                    text: 'Thumb Grips',
                  ),
                  Product(
                    quan: '100',
                    info: 'laith@gmail.com',
                    price: '50',
                    date: '15/6/2023',
                    rank: 'Electronics',
                    imag: 'images/Headphones.png',
                    text: 'Headphones.png',
                  ),
                  Product(
                    quan: '200',
                    info: 'Alaa@gmail.com',
                    price: '100',
                    date: '31/10/2024',
                    rank: 'Electronics',
                    imag: 'images/3D Glasses.png',
                    text: '3D Glasses',
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
