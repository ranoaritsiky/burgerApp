import 'package:flutter/material.dart';

import 'categories.dart';
import 'header.dart';
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
                onPressed: () {},
              ),
              actions: [
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.shopping_cart))
              ],
            ),
            Header(),
            Categories(),
          ],
        ),
        extendBody: true,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          elevation: 3,
          backgroundColor: Colors.teal,
          onPressed: () {},
          child: Icon(Icons.home_filled),
        ),
        bottomNavigationBar: Container(
          // color: Colors.black38,
          child: BottomAppBar(
            shape: CircularNotchedRectangle(),
            child: Row(
              children: [
                Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.add_alert),
                  color: Colors.white,
                ),
                Spacer(),
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.turned_in),
                    color: Colors.white),
                Spacer(),
              ],
            ),
          ),
        ));
  }
}
