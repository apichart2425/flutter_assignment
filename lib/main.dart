import 'package:flutter/material.dart';
import './ui/home.dart';
import './ui/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        // home: MyHomePage(),

        initialRoute: "/",
        routes: {
          "/": (context) => LoginScreen(),
        }
        // home: MyHomePage(title: 'Flutter Demo Home Page'),
        );
  }
}
