import 'package:flutter/material.dart';
import 'package:myfirstfirstapp/constants.dart';
import 'package:myfirstfirstapp/screens/navigationdrawerwidget.dart';
import 'components/discoverypagebody.dart';
import 'components/homepagebody.dart';
import 'components/settingpagebody.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> categories = ["Movies", "Books", "Songs", "Poems", "Quotes"];

  final PageController _pageController = PageController();
  final List<Widget> _screens = [
    const HomePageBody(),
    const DiscoveryPageBody(),
    const SettingsPageBody(),
  ];
  int _selectedIndex = 0;
  void _onPageChanged(int index) {
    setState((){
      _selectedIndex = index;
    });
  }
  void _onItemTapped(int selectedIndex) {
    _pageController.jumpToPage(selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE9E9E9),
      appBar: buildAppBar(),
      drawer: const NavigationDrawerWidget(),
      body: PageView(
        controller: _pageController,
        children: _screens,
        onPageChanged: _onPageChanged,
        physics: const NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
        child: BottomNavigationBar(
            selectedIconTheme: const IconThemeData(
              color: Colors.black,
            ),
            unselectedIconTheme: const IconThemeData(
              color: Colors.black38,
            ),
            onTap: _onItemTapped,
            iconSize: 25,
            elevation: 3,
            items: [
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Icon(Icons.home, color: _selectedIndex == 0 ? Colors.black : Colors.black38 ),
                ),
                title: const Text("Home", style: TextStyle(color: Colors.white)),
              ),
              BottomNavigationBarItem(
                  icon: Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Icon(Icons.all_inclusive_sharp, color: _selectedIndex == 1 ? Colors.black : Colors.black38 ),
                  ),
                  title:
                      const Text("Discover", style: TextStyle(color: Colors.white))),
              BottomNavigationBarItem(
                  icon: Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Icon(Icons.settings_sharp, color: _selectedIndex == 2 ? Colors.black : Colors.black38 ),
                  ),
                  title:
                      const Text("Settings", style: TextStyle(color: Colors.white))),
            ]),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      iconTheme: const IconThemeData(color: Colors.black),
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
      title: Row(
        children: [
          const SizedBox(width: kDefaultPaddin * 2.4),
          Image.asset(
            "assets/images/n-letter.png",
            fit: BoxFit.contain,
            height: 40,
          ),
          Container(
              padding: const EdgeInsets.all(5.0),
              child: const Text(
                "icethings.com",
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Satisfy',
                  fontSize: 27,
                  shadows: <Shadow>[
                    Shadow(
                      offset: Offset(2.0, 2.0),
                      blurRadius: 0.5,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ))
        ],
      ),
      actions: [
        IconButton(
            onPressed: () => {},
            icon: const Icon(Icons.search),
            color: Colors.black),
        const SizedBox(width: kDefaultPaddin / 2),
      ],
    );
  }
}
