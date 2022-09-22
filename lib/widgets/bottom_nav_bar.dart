// import 'package:flutter/material.dart';
//
// class NavBar extends StatefulWidget {
//   const NavBar({Key? key}) : super(key: key);
//
//   @override
//   State<NavBar> createState() => _NavBarState();
// }
//
// class _NavBarState extends State<NavBar> with SingleTickerProviderStateMixin {
//   late TabController _tabController;
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     _tabController = TabController(length: 4, vsync: this);
//   }
//
//   @override
//   void dispose() {
//     // TODO: implement dispose
//     super.dispose();
//     _tabController.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // bottomNavigationBar: ClipRRect(
//       //   borderRadius: BorderRadius.all(Radius.circular(40)),
//       //   child: Container(
//       //     color: Colors.black54,
//       //     child: TabBar(
//       //       labelColor: Colors.black,
//       //       unselectedLabelColor: Colors.white,
//       //       labelStyle: TextStyle(fontSize: 10.0),
//       //       indicator: UnderlineTabIndicator(
//       //         borderSide: BorderSide(color: Colors.black54, width: 0.0),
//       //         insets: EdgeInsets.fromLTRB(50.0, 0.0, 50.0, 40.0),
//       //       ),
//       //       indicatorColor: Colors.black54,
//       //       tabs: <Widget>[
//       //         Tab(
//       //           icon: Icon(Icons.home_outlined,size: 24.0,),
//       //           text: 'Home',
//       //         ),
//       //         Tab(
//       //           icon: Icon(Icons.my_library_books,size: 24.0,),
//       //           text: 'Library',
//       //         ),
//       //         Tab(
//       //           icon: Icon(Icons.bookmarks_outlined,size: 24.0,),
//       //           text: 'Bookmark',
//       //         ),
//       //         Tab(
//       //           icon: Icon(Icons.person_outline_rounded,size: 24.0,),
//       //           text: 'Profile',
//       //         ),
//       //       ],
//       //       controller: _tabController,
//       //     ),
//       //   ),
//       // ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class NavBars extends StatefulWidget {
  const NavBars({Key? key}) : super(key: key);

  @override
  State<NavBars> createState() => _NavBarsState();
}

class _NavBarsState extends State<NavBars> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tabController.dispose();
  }
  @override
  Widget build(BuildContext context) {

    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      width: width,

      child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          child: Container(
            color: Colors.white,
            child: TabBar(
              labelColor: Color(0xFF112650),
              unselectedLabelColor: Colors.black54,
              labelStyle: TextStyle(fontSize: 10.0),
              indicator: UnderlineTabIndicator(
                borderSide: BorderSide(color: Colors.white, width: 0.0),
                insets: EdgeInsets.fromLTRB(50.0, 0.0, 10.0, 10.0),
              ),
              indicatorColor: Colors.white,
              tabs: <Widget>[
                Tab(
                  icon: Icon(Icons.home_outlined,size: 26.0,),
                  text: 'Home',
                ),
                Tab(
                  icon: Icon(Icons.my_library_books,size: 26.0,),
                  text: 'Library',
                ),
                Tab(
                  icon: Icon(Icons.bookmarks_outlined,size: 26.0,),
                  text: 'Bookmark',
                ),
                Tab(
                  icon: Icon(Icons.person_outline_rounded,size: 26.0,),
                  text: 'Profile',
                ),
              ],
              controller: _tabController,
            ),
          )),
    );
  }
}
