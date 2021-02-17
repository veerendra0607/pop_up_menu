import 'package:fab_menu/place.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'example.dart';
import 'home.dart';
import 'navigation.dart';

class FabPopupMenu extends StatefulWidget {
  final int initialValue;
  FabPopupMenu({@required this.initialValue});
  @override
  _FabPopupMenuState createState() => _FabPopupMenuState();
}

class _FabPopupMenuState extends State<FabPopupMenu> {
  @override

  Widget build(BuildContext context) {


    return PopupMenuButton<int>(

      itemBuilder: (context) => [

        PopupMenuItem(

          enabled: true,
          value: 1,
          child: Text(
            "Home",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w700),
          ),
        ),
        PopupMenuItem(
          value: 2,
          child: Text(
            "Navigation",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w700),
          ),
        ),
        PopupMenuItem(
          value: 3,
          child: Text(
            "Place",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w700),
          ),
        ),
        PopupMenuItem(

          value: 4,
          child: Text(
            "Example",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w700),
          ),

        ),

      ],
      icon: Icon(Icons.add),
      offset: Offset(0, -215),
      onSelected: (value) {
        if(value == 1){
          print("Home");
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Home_Screen(value),),
          );
        }else if(value == 2){
          print("Navigation");
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Navigation_Screen(value),),
          );
        }else if(value == 3){
          print("Place");
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Place_Screen(value),),
          );
        }else {
          print("Example");
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Example_screen(value),),
          );

        }
      },
      initialValue: widget.initialValue,
    );
  }
}