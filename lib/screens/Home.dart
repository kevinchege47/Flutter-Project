// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

// ignore_for_file: prefer_const_constructors
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          itemExtent:100.0,
          children: [
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.black,
                child: Icon(Icons.car_crash_rounded),
              ),
              title: Text("Car Rentals"),
              subtitle: Text("Car Rentals for the week"),
              trailing: Text("100"),
              onTap: () {},
              tileColor: Colors.brown.shade50,
            ),
            ListTile(
              leading: Icon(Icons.people),
              title: Text("Customers"),
              subtitle: Text("Total Customers for the week"),
              trailing: Text("1000"),
            ),
            ListTile(
              leading: Icon(Icons.monetization_on),
              title: Text("Money"),
              subtitle: Text("Money earned for the week"),
              trailing: Text("USD 3000"),
              tileColor: Colors.brown.shade50,
            ),
          ],
        ),
      ),
    );
  }
}
