import 'package:flutter/material.dart';
import 'home.dart';
import 'register.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Login();
  }
}

class Login extends State<LoginScreen> {
  TextEditingController User_check = new TextEditingController();
  TextEditingController Password_check = new TextEditingController();
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
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: TextField(
                      controller: User_check,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        hintText: "User ID",
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: TextField(
                      controller: Password_check,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock),
                        hintText: "Password",
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: ButtonTheme(
                      minWidth: 300,
                      child: RaisedButton(
                          color: Colors.grey.shade300,
                          child: Text("Login"),
                          onPressed: () {
                            if (User_check.text.isEmpty ||
                                Password_check.text.isEmpty) {
                            } else if (User_check == "admin" &&
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
                  Align(
                    alignment: Alignment.centerRight,
                    child: FlatButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RegisterScreen()));
                      },
                      child: Text("Register New Account"),
                      textColor: Colors.teal.shade500,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
