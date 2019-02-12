import 'package:flutter/material.dart';
import 'home.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      resizeToAvoidBottomPadding: false,
        // appBar: AppBar(
        //   backgroundColor: Colors.transparent,
        //   elevation: 0.0,
        // ),
        body: Center(
          child: Container(
             child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 40.0, bottom: 20),
                  child: Image.asset(
                    "resource/img_food1.jpg",
                    height: 150,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      hintText: "User ID",
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      hintText: "Password",
                    ),
                  ),
                ),

                RaisedButton(
                  child: Text("Login"),
                  onPressed: (){},

                ),
                FlatButton(
                  child: Text("data"),
                ),
              ],
            ),
          ),
        )

        );
  }
}
