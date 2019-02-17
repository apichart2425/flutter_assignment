import 'package:flutter/material.dart';
import 'home.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Home();
  }
}

class Home extends State<HomeScreen> with SingleTickerProviderStateMixin {
  int _currentIndex = 0;
  List<Widget> _tabList = [
    Center(
      child: Text(
        "Home",
        style: TextStyle(fontSize: 60.0, fontWeight: FontWeight.bold),
      ),
    ),
    Center(
      child: Text(
        "Notify",
        style: TextStyle(fontSize: 60.0, fontWeight: FontWeight.bold),
      ),
    ),
    Center(
      child: Text(
        "Map",
        style: TextStyle(fontSize: 60.0, fontWeight: FontWeight.bold),
      ),
    ),
    Center(
      child: Text(
        "Profile",
        style: TextStyle(fontSize: 60.0, fontWeight: FontWeight.bold),
      ),
    ),
    Center(
      child: Text(
        "Setup",
        style: TextStyle(fontSize: 60.0, fontWeight: FontWeight.bold),
      ),
    ),
  ];

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: _tabList.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text("Home"),
          ),
          body: TabBarView(
            controller: _tabController,
            children: _tabList,
          ),
          bottomNavigationBar: new Theme(
            data: Theme.of(context).copyWith(
                // sets the background color of the `BottomNavigationBar`
                canvasColor: Colors.blue,
                // sets the active color of the `BottomNavigationBar` if `Brightness` is light
                primaryColor: Colors.white,
                textTheme: Theme.of(context).textTheme.copyWith(
                    caption: new TextStyle(color: Colors.lightBlue[600]))),
            child: BottomNavigationBar(
              currentIndex: _currentIndex,
              onTap: (currentIndex) {
                setState(() {
                  _currentIndex = currentIndex;
                });

                _tabController.animateTo(_currentIndex);
              },
              type: BottomNavigationBarType.fixed,
              items: [
                BottomNavigationBarItem(
                    icon: Icon(Icons.line_style), title: Text("")),
                BottomNavigationBarItem(
                    icon: Icon(Icons.notifications), title: Text("")),
                BottomNavigationBarItem(
                    icon: Icon(Icons.explore), title: Text("")),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person), title: Text("")),
                BottomNavigationBarItem(
                    icon: Icon(Icons.settings), title: Text("")),
              ],
            ),
            // bottomNavigationBar: new Theme(
            //   data: Theme.of(context).copyWith(
            //       // sets the background color of the `BottomNavigationBar`
            //       canvasColor: Colors.blue,
            //       // sets the active color of the `BottomNavigationBar` if `Brightness` is light
            //       primaryColor: Colors.white,
            //       textTheme: Theme.of(context).textTheme.copyWith(
            //           caption: new TextStyle(color: Colors.lightBlue[600]))),
            //   child: BottomNavigationBar(
            //     onTap: (currentIndex) {
            //       setState(() {
            //         _currentIndex = currentIndex;
            //       });
            //       _tabController.animateTo(_currentIndex);
            //     },
            //     // fixedColor: Colors.white,
            //     type: BottomNavigationBarType.fixed,
            //     items: [
            //       BottomNavigationBarItem(
            //           icon: Icon(Icons.line_style), title: Text("")),
            //       BottomNavigationBarItem(
            //           icon: Icon(Icons.notifications), title: Text("")),
            //       BottomNavigationBarItem(
            //           icon: Icon(Icons.explore), title: Text("")),
            //       BottomNavigationBarItem(
            //           icon: Icon(Icons.person), title: Text("")),
            //       BottomNavigationBarItem(
            //           icon: Icon(Icons.settings), title: Text("")),
            //     ],
            //   ),
            // ),
          ),
        ),
      ),
    );
  }
}
