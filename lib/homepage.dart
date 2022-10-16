import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:instagram_clone/pages/account.dart';
import 'package:instagram_clone/pages/home.dart';
import 'package:instagram_clone/pages/reels.dart';
import 'package:instagram_clone/pages/search.dart';
import 'package:instagram_clone/pages/shop.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  //nav around the bottom  nav bar
  int _selectedIndex = 0;
  void _navigationBottomNavBar(int index){
    setState(() {
      _selectedIndex = index;
    });
  }
  //different pages to navigate
   final List<Widget> _children = [
    UserHome(),
    UserSearch(),
     Userreels(),
     UserShop(),
     UserAccount(),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigationBottomNavBar,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
          BottomNavigationBarItem(icon: Icon(Icons.video_call), label: 'reels'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'like'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'account'),
        ],
      ),

    );
  }
}
