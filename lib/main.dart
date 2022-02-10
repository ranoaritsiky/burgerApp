// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'burger.dart';

void main() {
  runApp(BurgerApp());
}

class BurgerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          appBarTheme: AppBarTheme(
            color: Colors.teal,
            centerTitle: true,
          ),
          bottomAppBarColor: Colors.teal),
      home: Hamburger(),
    );
  }
}

