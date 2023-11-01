import 'package:dcard_demo/config/theme_color.dart';
import 'package:flutter/material.dart';

class BottomNavigationApp extends StatefulWidget {
  const BottomNavigationApp({super.key});

  @override
  State<BottomNavigationApp> createState() => _BottomNavigationAppState();
}

class _BottomNavigationAppState extends State<BottomNavigationApp> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: _onItemTapped,
      currentIndex: _selectedIndex,
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
      selectedItemColor: AppColors.mainColor,
      unselectedItemColor: Colors.grey.withOpacity(0.5),
      showSelectedLabels: false,
      selectedFontSize: 0,
      unselectedFontSize: 0,
      showUnselectedLabels: false,
      elevation: 0,
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            size: 30,
          ),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.widgets),
          label: "Bar",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.content_copy),
          label: "Search",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.storefront),
          label: "Profile",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications),
          label: "Profile",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.menu),
          label: "Profile",
        ),
      ],
    );
  }
}
