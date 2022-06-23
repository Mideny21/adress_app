import 'package:flutter/material.dart';

import 'ads_screen.dart';
import 'home.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  late List<Widget> _pages;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pages = <Widget>[HomeScreen(), AdsScreen()];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(children: _pages, index: _selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.animation_outlined),
            label: 'ads',
          ),
        ],
        currentIndex: _selectedIndex, //New
        onTap: _onItemTapped,
        backgroundColor: Colors.grey[200],
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        selectedIconTheme: IconThemeData(color: Color(0xff407bff), size: 30),
        // selectedItemColor: AppColors.tertiaryColor,
        // selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        // unselectedIconTheme: IconThemeData(
        //   color: AppColors.alternativeColor,
        // ),
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}
