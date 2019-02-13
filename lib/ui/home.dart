import 'package:flutter/material.dart';
import 'home.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: MaterialApp(
        home: DefaultTabController(
          length: 5,
          child: Scaffold(
            // appBar: AppBar(
            //   // backgroundColor: Color(0xFF3F5AA6),
            //   title: Text("Home"),

            //   // bottomNavigationBar: TabBar(
            //   //   tabs: <Widget>[
            //   //     Tab(icon: Icon(Icons.lock),)
            //   //   ],
            // ),

            // // ),

            // bottomNavigationBar: BottomNavigationBar(

            //   items: <BottomNavigationBarItem>[
            //     BottomNavigationBarItem(
            //         icon: Icon(Icons.home)),
            //     BottomNavigationBarItem(
            //         icon: Icon(Icons.home)),
            //     BottomNavigationBarItem(
            //         icon: Icon(Icons.home)),
            //     BottomNavigationBarItem(
            //         icon: Icon(Icons.home)),
            //     BottomNavigationBarItem(
            //         icon: Icon(Icons.home)),
            //   ],
            // ),
            appBar: AppBar(
              backgroundColor: Color(0xFF3F5AA6),
              title: Text("Title text"),
              bottom: TabBar(
                tabs: [
                  Tab(
                    text: "Transactions",
                    icon: Icon(Icons.euro_symbol),
                  ),
                  Tab(
                    text: "Bills",
                    icon: Icon(Icons.assignment),
                  ),
                  Tab(
                    text: "Balance",
                    icon: Icon(Icons.account_balance_wallet),
                  ),
                  Tab(
                    text: "Options",
                    icon: Icon(Icons.settings),
                  ),
                  Tab(
                    text: "Options",
                    icon: Icon(Icons.settings),
                  ),
                ],
              ),
            ),
            body: TabBarView(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(child: Text("Home")),
                  ],
                ),
               Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(child: Text("Notify")),
                  ],
                ),
               Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(child: Text("Map")),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(child: Text("Profile")),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(child: Text("Setup")),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
