// ignore_for_file: file_names, prefer_const_constructors, prefer_const_declarations

import 'package:flutter/material.dart';
import 'package:ourstore/ResponsiveHelper.dart';

AppBar buildAppbar(BuildContext context) {
  ResponsiveHelper.fromfontSize(.05);

  return AppBar(
    leading: BackButton(
      color: Colors.black,
    ),
    backgroundColor: Colors.transparent,
    elevation: 0,
  );
}
