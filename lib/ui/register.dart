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
  TextEditingController RePassword_check = new TextEditingController();
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Scaffold(
          key: _scaffoldKey,
          appBar: AppBar(
            centerTitle: true,
            title:
                Text("REGISTER", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0,)),
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
                        style: TextStyle(color: Colors.blue),
                        controller: Email_check,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.mail, color: Colors.blue),
                          hintText: "Email Address",
                          hintStyle: TextStyle(color: Colors.blue),
                          //เปลี่ยนสี เส้น
                          enabledBorder: new UnderlineInputBorder(
                              borderSide: new BorderSide(color: Colors.blue)),
                        ),
                      ),
                    ),
                    TextField(
                      style: TextStyle(color: Colors.blue, fontSize: 30),
                      controller: PrePassword_check,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock, color: Colors.blue),
                        hintText: "Password",
                        hintStyle: TextStyle(color: Colors.blue, fontSize: 15),
                        enabledBorder: new UnderlineInputBorder(
                            borderSide: new BorderSide(color: Colors.blue)),
                      ),
                      obscureText: true,
                    ),
                    TextField(
                      style: TextStyle(color: Colors.blue, fontSize: 30),
                      controller: RePassword_check,
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Colors.blue,
                        ),
                        hintText: "Re-Password",
                        hintStyle: TextStyle(color: Colors.blue, fontSize: 15),
                        enabledBorder: new UnderlineInputBorder(
                            borderSide: new BorderSide(color: Colors.blue)),
                      ),
                      obscureText: true,
                    ),
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: ButtonTheme(
                        height: 50,
                        minWidth: 400,
                        child: RaisedButton(
                            // color: Colors.grey.shade300,
                            child: Text(
                              "CONTINUE",
                              style: TextStyle(color: Colors.white),
                            ),
                            onPressed: () {
                              if (Email_check.text.isEmpty ||
                                  PrePassword_check.text.isEmpty ||
                                  RePassword_check.text.isEmpty) {
                                _scaffoldKey.currentState.showSnackBar(SnackBar(
                                    content:
                                        Text('กรุณาระบุข้อมูลให้ครบถ้วน')));
                              } else if (Email_check.text == "admin") {
                                _scaffoldKey.currentState.showSnackBar(SnackBar(
                                    content: Text('user นี้มีอยู่ในระบบแล้ว')));
                              } else {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LoginScreen()));
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
