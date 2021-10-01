import 'package:flutter/material.dart';
import 'package:midterm_app/pages/return_form.dart';

import 'blank_four.dart';
import 'blank_one.dart';
import 'blank_three.dart';
import 'blank_two.dart';

import 'form_page.dart';
import 'home_screen.dart';

//หนูไปโหลด laucher icon แล้ว pubspec.yaml error ;;-;; //

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('What Cat Menu')),
      body: ListView(
        children: <Widget>[
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomeScreen()),
              );
            },
            leading: Icon(Icons.shower, color: Colors.deepOrange[100]),
            title: Text('Pet Care'),
            subtitle: Text('Grooming Service'),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FormPage()),
              );
            },
            leading: Icon(Icons.shopping_bag, color: Colors.deepOrange[100]),
            title: Text('Grooming Checkout'),
            subtitle: Text('Grooming delivery checkout'),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BlankOne()),
              );
            },
            leading: Icon(Icons.zoom_in, color: Colors.deepOrange[100]),
            title: Text('Blogs'),
            subtitle: Text('Everything about cats'),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BlankTwo()),
              );
            },
            leading:
                Icon(Icons.wb_sunny_rounded, color: Colors.deepOrange[100]),
            title: Text('Habitats'),
            subtitle: Text('Environment good for cat'),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BlankThree()),
              );
            },
            leading: Icon(Icons.water_outlined, color: Colors.deepOrange[100]),
            title: Text('Food and Beverage'),
            subtitle: Text('Food and Beverage good for cat'),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BlankFour()),
              );
            },
            leading: Icon(Icons.wallet_giftcard, color: Colors.deepOrange[100]),
            title: Text('Cat Treasure'),
            subtitle: Text('Cat must have items'),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ReturnForm()),
              );
            },
            leading: Icon(Icons.pages, color: Colors.deepOrange[100]),
            title: Text('Return Form'),
            subtitle: Text('To recheck data'),
          ),
        ],
      ),
    );
  }
}
