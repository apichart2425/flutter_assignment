import 'package:flutter/material.dart';
import 'home.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Home();
  }
}

// class Home extends State<HomeScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: DefaultTabController(
//         length: 6,
//         child: Scaffold(
//           appBar: AppBar(
//             centerTitle: true,
//             title: Text("Title text"),
//           ),
          
//           bottomNavigationBar: BottomNavigationBar(
//             items: [
//               BottomNavigationBarItem(
//                 icon: Icon(Icons.home,),
//                 title: Text(""),
//               ),
//               BottomNavigationBarItem(
//                 icon: Icon(Icons.notifications),
//                 title: Text("")
//               ),
//               BottomNavigationBarItem(
//                 icon: Icon(Icons.home),
//                 title: Text("")
//               ),
//               BottomNavigationBarItem(
//                 icon: Icon(Icons.home),
//                 title: Text("")
//               ),
//               BottomNavigationBarItem(
//                 icon: Icon(Icons.home),
//                 title: Text("")
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
class Home extends State<HomeScreen>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: Text("tap"),
          bottom: TabBar(
            tabs: <Widget>[
            Tab(icon: Icon(Icons.directions_car),),
            Tab(icon: Icon(Icons.account_balance),),
            Tab(icon: Icon(Icons.score),),    
          ],),
        ),

        // bottomNavigationBar: BottomNavigationBar(
        //   type : BottomNavigationBarType.fixed,
        //     items: [
        //       BottomNavigationBarItem(
        //         icon: Icon(Icons.line_style),
        //         title: Text("")
        //       ),
        //       BottomNavigationBarItem(
        //         icon: Icon(Icons.notifications),
        //         title: Text("")
        //       ),
        //       BottomNavigationBarItem(
        //         icon: Icon(Icons.explore),
        //         title: Text("")
        //       ),
        //       BottomNavigationBarItem(
        //         icon: Icon(Icons.person),
        //         title: Text("")
        //       ),
        //       BottomNavigationBarItem(
        //         icon: Icon(Icons.settings),
        //         title: Text("")
        //       ),
        //     ],
        //   ),
      )
    );;
  }
}

