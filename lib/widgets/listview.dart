import 'package:flutter/material.dart';
// ignore_for_file: prefer_const_literals_to_create_immutables
// ignore_for_file: prefer_const_constructors
class listTileWidget extends StatelessWidget {
  String title,subtitle;
  IconData leadingIcon,trailingIcon;
  Color? listTileColor,iconColor;

  listTileWidget({super.key,
    required this.title,
    required this.subtitle,
    this.leadingIcon = Icons.label,
    this.trailingIcon = Icons.add,
    this.listTileColor,
    this.iconColor,
});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: ListTile(
        tileColor: listTileColor,
        shape: ContinuousRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
            side: BorderSide(width: 1.0, color: Colors.blue)),
        title: Text(title,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        subtitle: Text(subtitle),
        leading: IconButton(onPressed: () {}, icon: Icon(leadingIcon)),
        trailing: IconButton(
          onPressed: () {},
          icon: Icon(trailingIcon),
          color: iconColor,
        ),
      ),
    );
  }
}
