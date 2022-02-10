// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SliverList(
        delegate: SliverChildListDelegate([
      Stack(
        children: [
          Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                height: size.height / 5,
                decoration: const BoxDecoration(
                    color: Colors.teal,
                    borderRadius:
                        BorderRadius.vertical(bottom: Radius.circular(45)),
                    boxShadow: [
                      BoxShadow(offset: Offset(0, 3), blurRadius: 3)
                    ]),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white70,
                          radius: 35,
                          child: CircleAvatar(
                            backgroundImage: AssetImage(
                              "assets/img/burger.jpeg",
                            ),
                            radius: 35,
                            // backgroundColor: Colors.transparent,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Column(
                          children: [
                            Text(
                              "Jack Daniel",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                            Container(
                              padding: EdgeInsets.all(8),
                              child: Text(
                                "GOLD MEMBER",
                                style: TextStyle(color: Colors.amberAccent),
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.black45),
                            )
                          ],
                        ),
                        Spacer(),
                        Text(
                          "154 \$ CAN",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              )
            ],
          ),
          Positioned(
            bottom: 0,
            child: Container(
              height: 50,
              width: size.width,
              child: Card(
                elevation: 3,
                margin: EdgeInsets.symmetric(horizontal: 50),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: TextFormField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      suffixIcon: Icon(Icons.search_sharp,color: Colors.amber,),
                      // contentPadding: EdgeInsets.only(left: ),
                      hintText: "Search my Burger",
                      hintStyle: TextStyle(
                        color: Colors.blueGrey,
                      )),
                ),
              ),
            ),
          )
        ],
      )
    ]));
  }
}
