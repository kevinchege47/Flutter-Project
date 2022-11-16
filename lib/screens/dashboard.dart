import 'dart:math';

// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Dashboard'.toUpperCase()),
      //   backgroundColor: Colors.lightGreen,
      // ),
      body: Container(
        width: 350.0,
        height: 250.0,
        padding: EdgeInsets.all(20.0),
        margin: EdgeInsets.all(50.0),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.deepOrange,
          // borderRadius: BorderRadius.circular(10.0),
          border: Border.all(color: Colors.black,width: 6.0),
          shape: BoxShape.circle,
          image: DecorationImage(image: AssetImage("images/rocket.jpg")),
          boxShadow: const [
            BoxShadow(
              color: Colors.amber,
              blurRadius: 7,
              spreadRadius: 5,
              offset: Offset(4,4)
            )

          ],
        ),
        // child: Text(
        //   "Little less Boring",
        //   style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        // ),
      ),
    );
  }
}

int getNumber() {
  // Random random = new Random();
  // var number = random.nextInt(10000);
  // return number;
  return Random().nextInt(1000);
}
