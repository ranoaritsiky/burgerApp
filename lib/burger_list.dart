// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class BurgerList extends StatefulWidget {
  final int row;
  BurgerList({required this.row});
  @override
  _BurgerListState createState() => _BurgerListState();
}

class _BurgerListState extends State<BurgerList> {
  int items = 10;
  Widget baconImage = Container(
    height: 130,
    child: Image.asset('assets/img/bacon.png'),
  );
  Widget chickeImage = Container(
    height: 130,
    child: Image.asset('assets/img/vegan.png'),
  );
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        margin: EdgeInsets.only(top: 20),
        height: 240,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: items,
            itemBuilder: (context, index) {
              bool reverse= widget.row ==2 ? index.isEven :index.isOdd;
              return Stack(
                children: [
                  Container(
                    height: 200,
                    width: 200,
                    child: GestureDetector(
                      onTap: () {
                        //TODO NAVIGATOR
                      },
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Column(
                            children: [
                              Text(
                                reverse ? "Chicken Burger":"Bacon Burger",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              Spacer(),
                              Container(
                                // padding: EdgeInsets.only(bottom: 10),
                                child: Row(
                                  children: [
                                    Spacer(),
                                    Text(
                                      "15.95 \$",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                    Spacer(),
                                    Container(
                                      height: 50,
                                      width: 50,
                                      child: Card(
                                        color: Colors.white,
                                        // elevation: 3,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Icon(
                                          Icons.add,
                                          // color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        elevation: 3,
                        margin: EdgeInsets.all(10),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(45),
                                bottomRight: Radius.circular(0),
                                topLeft: Radius.circular(45),
                                topRight: Radius.circular(45))),
                      ),
                    ),
                  ),
                  Positioned(
                      top: reverse ? 40 : 30,
                      child: GestureDetector(
                      onTap: () {
                      //TODO NAVIGATOR
                      },
                      child: reverse ? baconImage : chickeImage,
                  ))
                ],
              );
            }),
      ),
    );
  }
}
