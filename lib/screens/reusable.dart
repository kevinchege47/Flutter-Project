import 'package:flutter/material.dart';

import '../widgets/listview.dart';

// ignore_for_file: prefer_const_literals_to_create_immutables
// ignore_for_file: prefer_const_constructors
class reusable extends StatelessWidget {
  reusable({Key? key}) : super(key: key);
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
      backgroundColor: Colors.white,
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
      body: ListView(
        children: [
          listTileWidget(title: "Bike Rim", subtitle: "Light Weight"),
          listTileWidget(
            title: "Handle Bar",
            subtitle: "Aluminium",
            iconColor: Colors.pink,
            leadingIcon: Icons.add_a_photo_outlined,
            listTileColor: Colors.amber,
            trailingIcon: Icons.accessibility_new,
          )
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.amber,
        foregroundColor: Colors.green,
        child: Icon(Icons.add),
        // shape: BeveledRectangleBorder(
        //   borderRadius: BorderRadius.circular(10.0),
        //   side: BorderSide(color: Colors.brown,width: 2.0,style:BorderStyle.solid)
        // ),
      ),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 5.0,
        shape: CircularNotchedRectangle(),
        color: Colors.black87,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.home_filled,
                      color: Colors.white,
                    ),
                    Text(
                      "Home",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                )),
            Padding(
                padding: EdgeInsets.only(top: 10.0, bottom: 10.0, left: 10.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                    Text(
                      "Profile",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                )),
            Padding(
                padding: EdgeInsets.only(top: 10.0, bottom: 10.0, left: 10.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.sports_basketball,
                      color: Colors.white,
                    ),
                    Text(
                      "Play",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                )),
            Padding(
                padding: EdgeInsets.only(top: 10.0, bottom: 10.0, left: 10.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.wallet_sharp,
                      color: Colors.white,
                    ),
                    Text(
                      "Wallet",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
