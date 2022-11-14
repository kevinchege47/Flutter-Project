import 'dart:math';

import 'package:flutter/material.dart';
class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'.toUpperCase()),
        backgroundColor: Colors.lightGreen,
      ),
      body: Center(
        child: Text("Random value is: ${getNumber()}")
      ),
    );
  }
}

int getNumber(){
  // Random random = new Random();
  // var number = random.nextInt(10000);
  // return number;
  return Random().nextInt(1000);
}