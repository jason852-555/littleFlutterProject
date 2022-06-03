import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

var textColor =  Colors.black;
class NavDrawer extends StatelessWidget {
  final onResult;
  NavDrawer({this.onResult});
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
           DrawerHeader(
            child: Text(
              'Side menu',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            decoration: BoxDecoration(
                color: Colors.black,
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/cover.jpg'))),
          ),
          ListTile(
            leading: Icon(Icons.input),
            tileColor: Colors.black,
            title: Text('Button to change tap text color',
            style: TextStyle(color: textColor)),
            onTap: ()  {
              var currentColor;
              if(textColor == Colors.black)
                currentColor = "Black";
              else if(textColor == Colors.red)
                currentColor = "Red";
              else if(textColor == Colors.green)
                currentColor = "Green";
              else if(textColor == Colors.blue)
                currentColor = "Blue";
              else
                currentColor = "Unknown";
            Fluttertoast.showToast(
            msg: "The Color of the $currentColor",
            toastLength: Toast.LENGTH_LONG,
            gravity: ToastGravity.CENTER_LEFT,
            timeInSecForIosWeb: 5,
            backgroundColor: Colors.black,
            textColor: Colors.white,
            fontSize: 16.0
            );
            },
          ),
          ListTile(
            leading: Icon(Icons.verified_user),
            title: Text('TestTap 0',
                style: TextStyle(color: Colors.red)),
            tileColor: Colors.black,
            onTap: () {
              textColor = Colors.red;
              onResult("https://www.youtube.com/watch?v=A_bc7MJZ6Sw&list=RDMMA_bc7MJZ6Sw&start_radio=1");
              Navigator.of(context).pop();},
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('TestTap 1',
                style: TextStyle(color: Colors.blue)),
            tileColor: Colors.black,
            onTap: () {
              textColor = Colors.blue;
              onResult("https://www.youtube.com/watch?v=dLe40q0g3Vw");
              Navigator.of(context).pop();},
          ),
          ListTile(
            leading: Icon(Icons.border_color),
            title: Text('TextTap 2',
            style: TextStyle(color: Colors.green)),
            tileColor: Colors.black,
            onTap: () {
              textColor = Colors.green;
              onResult("https://www.youtube.com/watch?v=IymMXb0Gi0A");
              Navigator.of(context).pop();},
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('TestTap 3'),
            tileColor: Colors.white,
            onTap: ()  {
              if(textColor!= Colors.white) {
                textColor = Colors.white;
              }
              onResult("https://www.youtube.com/watch?v=MpgVqjkTlCo");
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }
}