import 'package:flutter/material.dart';
import 'package:foodmania/screens/recent_screen.dart';

import '../utility/constants.dart';
import 'favorite_screen.dart';
import 'home_screen.dart';

class DriverPage extends StatefulWidget {
  @override
  _DriverPageState createState() => _DriverPageState();
}

class _DriverPageState extends State<DriverPage> {
  int _currentIndex = 0;

  final List<Widget> _children = [
    HomeScreen(),
    FavoriteScreen(),
    RecentScreen(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: secondary,
        fixedColor: primary,
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.favorite),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.history),
            label: 'Recent',
          ),
        ],
      ),
    );
  }
}
