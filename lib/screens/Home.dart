import 'package:flutter/material.dart';
// ignore_for_file: prefer_const_literals_to_create_immutables
// ignore_for_file: prefer_const_constructors
class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
  List<String> products = ["Bed","Sofa","Chair"];
  List<String> productDetails = ["King size Bed","Queens size Sofa","Vintage Chair"];
  List<int> price = [20000,60000,70000];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView.builder(
          itemCount: products.length,
          itemBuilder: (context,index){
            return ListTile(
              leading: CircleAvatar(child: Text(products[index][0]),),
              title: Text(products[index]),
              subtitle: Text(productDetails[index]),
              trailing: Text(price[index].toString()),
            );
          },

        ),
      ),
    );
  }
}
