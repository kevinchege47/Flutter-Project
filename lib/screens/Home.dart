import 'package:flutter/material.dart';

// ignore_for_file: prefer_const_literals_to_create_immutables
// ignore_for_file: prefer_const_constructors
class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
  List<String> products = ["Bed", "Sofa", "Chair"];
  List<String> productDetails = [
    "King size Bed",
    "Queens size Sofa",
    "Vintage Chair"
  ];
  List<int> price = [20000, 60000, 70000];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigation Drawer"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("support@adjust.co.ke"),
              accountEmail: Text("Kevin Chege"),
              currentAccountPicture: CircleAvatar(
                foregroundImage: AssetImage("images/rocket.jpg"),
              ),
            ),
            ListTile(
                leading: Icon(Icons.home_filled),
                title: Text("Home"),
                onTap: () {}),
            ListTile(
                leading: Icon(Icons.person),
                title: Text("profile"),
                onTap: () {}),
            ListTile(
                leading: Icon(Icons.star),
                title: Text("Favorites"),
                onTap: () {}),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Text("Labels"),
            ),
            ListTile(
                leading: Icon(Icons.label), title: Text("Red"), onTap: () {}),
            ListTile(
                leading: Icon(Icons.label), title: Text("Blue"), onTap: () {}),
            ListTile(
                leading: Icon(Icons.label), title: Text("Green"), onTap: () {}),
          ],
        ),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                child: Text(products[index][0]),
              ),
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
