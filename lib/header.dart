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
      Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            height: size.height / 5,
            decoration: const BoxDecoration(
                color: Colors.teal,
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(45)),
                boxShadow: [BoxShadow(offset: Offset(0, 3), blurRadius: 3)]),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white70,
                      radius: 35,
                    )
                  ],
                )
              ],
            ),
          ),


        ],
      ),
    ]));
  }
}
