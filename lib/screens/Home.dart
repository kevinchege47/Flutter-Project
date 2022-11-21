// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

// ignore_for_file: prefer_const_constructors
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rows and Columns"),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(child: Image(image: AssetImage("images/rocket.jpg"))),
                Expanded(flex:2, child: Image(image: AssetImage("images/rocket.jpg"))),
                Expanded(child: Image(image: AssetImage("images/rocket.jpg"))),
                Expanded(flex:4,child: Image(image: AssetImage("images/rocket.jpg"))),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.star),
                Icon(Icons.star),
                Icon(Icons.star_border_outlined),
                Icon(Icons.star_border_outlined),
                Icon(Icons.star_border_outlined),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [Icon(Icons.phone, size: 35.0), Text("Phone")],
                ),
                Column(
                  children: [Icon(Icons.home, size: 35.0), Text("Home")],
                ),
                Column(
                  children: [Icon(Icons.share, size: 35.0), Text("Share")],
                ),
                Column(
                  children: [
                    Icon(Icons.add_card_rounded, size: 35.0),
                    Text("Card")
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
