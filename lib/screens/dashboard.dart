import 'dart:math';

// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Dashboard'.toUpperCase()),
        backgroundColor: Colors.lightGreen,
      ),
      body: Center(
        child: IconButton(
          icon: Icon(FontAwesomeIcons.airbnb),
          iconSize: 100,
          color: Colors.lightGreen,
          splashColor: Colors.deepOrange,
          onPressed: () {},),
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
