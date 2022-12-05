import 'package:first_flutter_project/form.dart';
import 'package:flutter/material.dart';

// ignore_for_file: prefer_const_literals_to_create_immutables
// ignore_for_file: prefer_const_constructors
class Details extends StatefulWidget {
  const Details({Key? key}) : super(key: key);

  @override
  State<Details> createState() => _MyFormState();
}

class _MyFormState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MyForm"),
        centerTitle: true,
        elevation: 10.0,
        shadowColor: Colors.pink,
      ),
      body: Center(
        child: OutlinedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context){
                return Forms();
              }),
            );
          },
          style: OutlinedButton.styleFrom(minimumSize: const Size(200, 50)),
          child: Text(
            "Outlined Button".toUpperCase(),
            style: TextStyle(
                color: Colors.blueAccent, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
