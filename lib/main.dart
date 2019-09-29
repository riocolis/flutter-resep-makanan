import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_coba/dessert.dart';

import 'breakfeast.dart';

void main(){
  runApp(MaterialApp(home: HomePage()));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final List<Widget> _child = [
    BreakfeastPage(),
    DessertPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meals'),
      ),
      body: _child[_currentIndex],
      bottomNavigationBar: FancyBottomNavigation(
        tabs: [
          TabData(iconData: Icons.home, title: "Beranda"),
          TabData(iconData: Icons.favorite, title: "Favorit")
        ],
        onTabChangedListener: (index){
          setState(() {
           _currentIndex = index; 
          });
        },
      ),
    );
  }
}