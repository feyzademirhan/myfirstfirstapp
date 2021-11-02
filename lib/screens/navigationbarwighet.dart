import 'package:flutter/material.dart';

import 'homepage.dart';

class NavigationBarWidget extends StatefulWidget {
  const NavigationBarWidget({Key? key}) : super(key: key);

  @override
  State<NavigationBarWidget> createState() => _NavigationBarWidgetState();
}

class _NavigationBarWidgetState extends State<NavigationBarWidget> {
  final padding = const EdgeInsets.symmetric(horizontal: 20);
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget> [
    MyHomePage(),

  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
        child: BottomNavigationBar(
            iconSize: 25,
            selectedIconTheme: const IconThemeData(
              color: Colors.black,
            ),
            unselectedIconTheme: const IconThemeData(
              color: Colors.black38,
            ),
            currentIndex: _selectedIndex,
            onTap: _onItemTap,
            elevation: 3,
            items: const [
              BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.only(top: 10.0),
                  child: Icon(Icons.home),
                ),
                title: Text("Home", style: TextStyle(color: Colors.white)),),
              BottomNavigationBarItem(
                  icon: Padding(
                    padding: EdgeInsets.only(top: 10.0),
                    child: Icon(Icons.all_inclusive_sharp),
                  ),
                  title: Text("Discover", style: TextStyle(color: Colors.white))),
              BottomNavigationBarItem(
                  icon: Padding(
                    padding: EdgeInsets.only(top: 10.0),
                    child: Icon(Icons.settings_sharp),
                  ),
                  title: Text("Settings", style: TextStyle(color: Colors.white))),
            ]
        ),
      ),
    );
  }
}