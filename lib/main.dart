import 'package:flutter/material.dart';
import './ui/home.dart';
import './ui/login.dart';
import './ui/register.dart';

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
          "/login": (context) => LoginScreen(),
          "/": (context) => HomeScreen(),
          "/re": (context) => RegisterScreen(),
        }
        // home: MyHomePage(title: 'Flutter Demo Home Page'),
        );
  }
}
