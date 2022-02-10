// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  int currentSelectedItem = 0;

  @override
  Widget build(BuildContext context) {
    int items = 10;
    return SliverToBoxAdapter(
      child: Container(
        margin: EdgeInsets.only(top: 10.0),
        height: 100,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: items,
          itemBuilder: (context, index) => Stack(
            children: [
              Column(
                children: [
                  Container(
                    height: 90,
                    width: 90,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          currentSelectedItem = index;
                        });
                      },
                      child: Card(
                        color: index == currentSelectedItem ? Colors.black.withOpacity(0.7):Colors.white ,
                        child: Icon(
                          Icons.fastfood,
                          color: index == currentSelectedItem
                              ? Colors.white
                              : Colors.black.withOpacity(0.7),
                        ),
                        // color: Colors.black.withOpacity(0.7),
                        elevation: 3,
                        margin: EdgeInsets.all(10),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25)),
                      ),
                    ),
                  )
                ],
              ),
              Positioned(
                  bottom: 0,
                  child: Container(
                    width: 90,
                    child: Row(
                      children: [Spacer(), Text("Burger"), Spacer()],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
