import 'package:flutter/material.dart';

// ignore_for_file: prefer_const_constructors
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(icon:Icon(Icons.menu),onPressed: (){}),
        title: Text("Home"),
        actions: [
          IconButton(icon:Icon(Icons.shopping_cart),onPressed: (){}),
          IconButton(icon:Icon(Icons.search),onPressed: (){}),
          // IconButton(icon:Icon(Icons.help),onPressed: (){}),
        ],
        elevation: 5,
        centerTitle: true,
        backgroundColor: Colors.yellow,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))
        ) ,
      ),
      body: Center(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: ElevatedButton.icon(
            icon: Icon(Icons.add_a_photo_outlined),
            label: Text("Take a Photo"),
            // child: Text("Lets Begin"),
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.black,
              padding: EdgeInsets.all(20.0),
              // backgroundColor: Colors.deepOrange,
              fixedSize: Size(300, 80),
              textStyle: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              // elevation: 10,
              shadowColor: Colors.black,
              // side: BorderSide(color: Colors.black, width: 1),
              shape: StadiumBorder(),
            ),
          ),
        ),
      ),
    );
  }
}
