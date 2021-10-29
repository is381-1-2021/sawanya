import 'package:flutter/material.dart';
import 'pages/blank_one.dart';
import 'pages/blank_three.dart';
import 'pages/blank_two.dart';
import 'pages/grooming_form.dart';
import 'pages/home_screen.dart';
import 'pages/menu.dart';
import 'pages/return_form.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'What Cat Grooming',
        theme: ThemeData(
          primaryColor: Colors.teal[200],
          accentColor: Colors.deepOrange[100],
          textTheme: TextTheme(
            bodyText2: TextStyle(color: Colors.blueGrey[800]),
          ),
        ),
        initialRoute: '/screen1',
        routes: <String, WidgetBuilder>{
          '/screen1': (context) => MenuPage(),
          '/screen2': (context) => HomeScreen(),
          '/screen3': (context) => FormPage(),
          '/screen4': (context) => BlankOne(),
          '/screen5': (context) => BlankTwo(),
          '/screen6': (context) => BlankThree(),
          '/screen7': (context) => ReturnForm(),
        });
  }
}
