// ignore_for_file: prefer_const_constructors, file_names, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:ourstore/Pages/AddProductPage.dart';
import 'package:ourstore/ResponsiveHelper.dart';
import 'package:ourstore/widgets/AnimatinRoute.dart';
import 'package:ourstore/widgets/Appbar.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ResponsiveHelper(context);
    return Scaffold(
      appBar: buildAppbar(context),
      body: SingleChildScrollView(
        child: Container(
          height: ResponsiveHelper.fromheight(1),
          width: ResponsiveHelper.fromwidth(1),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: .002, horizontal: 2),
                child: Text(
                  'my profile',
                  style: TextStyle(
                      fontSize: ResponsiveHelper.fromfontSize(.06),
                      color: Colors.lightBlue),
                ),
              ),
              Divider(
                color: Colors.black,
              ),
              Container(
                decoration: BoxDecoration(color: Colors.white60),
                height: ResponsiveHelper.fromheight(.2),
                width: ResponsiveHelper.fromwidth(1),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    OutlinedButton(
                      onPressed: () {
                        Navigator.push(
                            context, AnimationRoute(widget: AddProductPage()));
                      },
                      child: Text('Add Product',
                          style: TextStyle(
                            fontSize: ResponsiveHelper.fromfontSize(.04),
                            color: Colors.lightBlue,
                          )),
                      style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25)),
                        backgroundColor: Colors.white,
                        fixedSize: Size(ResponsiveHelper.fromwidth(.8),
                            ResponsiveHelper.fromheight(.065)),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: ResponsiveHelper.fromheight(.6),
                child: ListView.builder(
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Container(
                          width: ResponsiveHelper.fromwidth(.5),
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(color: Colors.lightBlue)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(right: 2),
                                    child: Text(
                                      'Delete This Product',
                                      style: TextStyle(
                                          color: Colors.lightBlue,
                                          fontSize:
                                              ResponsiveHelper.fromfontSize(
                                                  .015)),
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.delete),
                                    color: Colors.lightBlue,
                                    iconSize: 35,
                                  ),
                                ],
                              ),
                              ClipOval(
                                child: Image.asset(
                                  'images/1.png',
                                  width: ResponsiveHelper.fromwidth(.4),
                                  height: ResponsiveHelper.fromheight(.2),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: Text(
                                  'Product Name',
                                  style: TextStyle(
                                      color: Colors.lightBlue,
                                      fontSize:
                                          ResponsiveHelper.fromfontSize(.025)),
                                ),
                              ),
                              OutlinedButton(
                                onPressed: () {},
                                child: Text('Edit Product',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize:
                                          ResponsiveHelper.fromfontSize(.024),
                                    )),
                                style: TextButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(25)),
                                    backgroundColor: Colors.lightBlue,
                                    fixedSize: Size(
                                        ResponsiveHelper.fromwidth(.4),
                                        ResponsiveHelper.fromheight(.06))),
                              ),
                            ],
                          ),
                        )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
