// import 'package:first_flutter_project/screens/Home.dart';
// import 'package:first_flutter_project/screens/reusable.dart';
//
// import 'screens/dashboard.dart';
// import 'package:flutter/material.dart';
//
// void main() => runApp(MyApp());
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         title: 'My Flutter App',
//         themeMode: ThemeMode.system,
//         debugShowCheckedModeBanner: false,
//         home: reusable());
//   }
// }
import 'package:flutter/material.dart';

// ignore_for_file: prefer_const_literals_to_create_immutables
// ignore_for_file: prefer_const_constructors

void main() => runApp(CTStatelessWidget());

class CTStatelessWidget extends StatelessWidget {
  const CTStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Stateful Widgets"),
          centerTitle: true,
        ),
        body: CTStatefulClass(),
      ),
    );
  }
}

//The middleman
class CTStatefulClass extends StatefulWidget {
  const CTStatefulClass({Key? key}) : super(key: key);

  @override
  State<CTStatefulClass> createState() => _CTStatefulClassState();
}

class _CTStatefulClassState extends State<CTStatefulClass> {
  bool liked = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          title: Text("Nike Shoes"),
          trailing: IconButton(
            icon: liked ? (Icon(Icons.favorite)):(Icon(Icons.favorite_border)),
            onPressed: () {
              setState(() => liked = !liked
              );
            },
          ),
        )
      ],
    );
  }
}
