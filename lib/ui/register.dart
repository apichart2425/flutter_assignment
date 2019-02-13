import 'package:flutter/material.dart';
import 'login.dart';
import 'home.dart';

class RegisterScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Register();
  }
}

class Register extends State<RegisterScreen> {
  TextEditingController Email_check = new TextEditingController();
  TextEditingController PrePassword_check = new TextEditingController();
  TextEditingController Password_check = new TextEditingController();


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Scaffold(
          appBar: AppBar(
            title: Text(
              "Register",
              textAlign: TextAlign.center,
            ),
          ),
          resizeToAvoidBottomPadding: false,
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Center(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0),
                      child: TextField(
                        controller: Email_check,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.mail),
                          hintText: "Email Address",
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: TextField(
                        controller: PrePassword_check,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock),
                          hintText: "Password",
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: TextField(
                        controller: Password_check,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock),
                          hintText: "Re-Password",
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: ButtonTheme(
                        minWidth: 300,
                        child: RaisedButton(
                            // color: Colors.grey.shade300,
                            child: Text("CONTINUE"),
                            onPressed: () {
                              if (Email_check.text.isEmpty ||
                                  Password_check.text.isEmpty) {
                              } else if (Email_check == "admin" &&
                                  Password_check == "&&") {
                              } else {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => HomeScreen()));
                              }
                            }),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )),
    );
  }
}

// Center(
//         child: Form(
//   child: ListView(
//     children: <Widget>[
//       Image.asset(
//         "resource/img_food1.jpg",
//         height: 150,
//         width: 200,
//       ),

//       // id
//       TextField(
//         decoration: InputDecoration(
//           prefixIcon: Icon(Icons.person),
//           // labelText: "User ID",
//           // hintText: "User ID",
//         ),
//       ),

//       // password
//       TextField(
//         decoration: InputDecoration(
//           icon: Icon(Icons.lock),
//           labelText: "Password",
//           hintText: "PASSWORD",
//         ),
//       ),
//     ],
//   ),
// )
// )
