import 'package:flutter/material.dart';
import 'package:mountain/pages/nav_pages/barItem_page.dart';
import 'package:mountain/pages/nav_pages/main_page.dart';
import 'package:mountain/pages/nav_pages/people_page.dart';
import 'package:mountain/pages/nav_pages/search_page.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {

  List pages=[
    MainPage(),
    SearchPage(),
    PeoplePage(),
    BarItemPage()
  ];

  int currentIndex=0;

  void onTap(int index){
    setState(() {
      currentIndex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: pages[currentIndex],

      backgroundColor: Colors.white,

      bottomNavigationBar: BottomNavigationBar(


        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        onTap: onTap,
        selectedItemColor: Colors.black54,
        unselectedItemColor: Colors.grey.withOpacity(0.7),
        selectedFontSize: 0,
        unselectedFontSize: 0,
        elevation: 0,
        backgroundColor: Colors.white,
        showSelectedLabels: false,
        showUnselectedLabels: false,

        items: [
          BottomNavigationBarItem(icon: Icon(Icons.apps),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.people),label: "People"),
          BottomNavigationBarItem(icon: Icon(Icons.bar_chart_sharp),label: "Bar"),


        ],
      ),
    );
  }
}
