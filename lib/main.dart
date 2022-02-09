import 'package:flutter/material.dart';
import 'header.dart';

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
          appBarTheme: const AppBarTheme(
        color: Colors.teal,
        centerTitle: true,
      )),
      home: Hamburger(),
    );
  }
}

class Hamburger extends StatefulWidget {
  const Hamburger({Key? key}) : super(key: key);

  @override
  _HamburgerState createState() => _HamburgerState();
}

class _HamburgerState extends State<Hamburger> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   leading: Icon(Icons.home),
      //   title:const Text("Home burger"),
      //   backgroundColor: Colors.teal,
      // ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text("Home Burger"),
            pinned: true,
            leading: IconButton(
              icon: const Icon(Icons.home),
              onPressed: () {

              },
            ),
            actions: [
              IconButton(
                  onPressed: () {

                  },
                  icon: const Icon(Icons.shopping_cart))
            ],
          ),
          Header(),
        ],
      ),
    );
  }
}
