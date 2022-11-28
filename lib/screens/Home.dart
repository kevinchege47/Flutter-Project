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
      backgroundColor: Colors.grey.shade800,
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
      // body: Container(
      //   child: ListView.builder(
      //     itemCount: products.length,
      //     itemBuilder: (context, index) {
      //       return ListTile(
      //         leading: CircleAvatar(
      //           child: Text(products[index][0]),
      //         ),
      //         title: Text(products[index]),
      //         subtitle: Text(productDetails[index]),
      //         trailing: Text(price[index].toString()),
      //       );
      //     },
      //   ),
      // ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16),
          constraints: BoxConstraints.expand(width: 330, height: 450),
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Colors.white24,
                    offset: Offset(0, 2),
                    spreadRadius: 5,
                    blurRadius: 10),
              ],
              image: DecorationImage(
                image: AssetImage("images/rocket.jpg"),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.all(Radius.circular(10.0))),
          child: Stack(
            children: [
              Text("Editors Choice",
                  style: TextStyle(color: Colors.black, fontSize: 18)),
              Positioned(
                top: 20.0,
                child: Text("SpaceX",
                    style: TextStyle(color: Colors.black, fontSize: 18)),
              ),
              Positioned(
                right: 0,
                bottom: 20,
                child: Text("To the moon and back",
                    style: TextStyle(color: Colors.black, fontSize: 16)),
              ),
              Positioned(
                right: 0,
                bottom: 0,
                child: Text("Fly with us Today",
                    style: TextStyle(color: Colors.black, fontSize: 14)),
              ),
            ],
          ),
        ),
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
