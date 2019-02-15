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
  final TextEditingController User_check = new TextEditingController();
  final TextEditingController Password_check = new TextEditingController();
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        key: _scaffoldKey,
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
                    height: 200,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: TextField(
                      controller: User_check,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        hintText: "User Id",
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
                      obscureText: true,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: ButtonTheme(
                      minWidth: 300,
                      child: RaisedButton(
                          color: Colors.grey.shade300,
                          child: Text("LOGIN"),
                          onPressed: () {
                            if (User_check.text.isEmpty ||
                                Password_check.text.isEmpty) {
                              _scaffoldKey.currentState.showSnackBar(SnackBar(
                                  content: Text('กรุณาระบุuser or password')));
                            }
                            else if (User_check.text == "admin" &&
                                Password_check.text == "admin") {
                              _scaffoldKey.currentState.showSnackBar(SnackBar(
                                  content:
                                      Text('user or password ไม่ถูกต้อง')));
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
                      child: Padding(
                        padding: const EdgeInsets.only(left: 60.0),
                        child: Text(
                          "Register New Account",
                        ),
                      ),
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
