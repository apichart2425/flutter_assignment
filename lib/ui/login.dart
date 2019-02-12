import 'package:flutter/material.dart';
import 'home.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        // appBar: AppBar(
        //   backgroundColor: Colors.transparent,
        //   elevation: 0.0,
        // ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 50.0),
          child: Center(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    "resource/img_food1.jpg",
                    height: 150,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      hintText: "User ID",
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      hintText: "Password",
                    ),
                  ),
                  ButtonTheme(
                    minWidth: 300,
                    child: RaisedButton(
                      color: Colors.grey.shade300,
                      child: Text("Login"),
                      onPressed: () {
                        // routes: {
                        //    "/": (context) => HomeScreen(),
                        // },
                      },
                    ),
                  ),
                  FlatButton(
                    onPressed: () {},
                    child: Text("Register New Account"),
                    textColor: Colors.teal.shade500,
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
