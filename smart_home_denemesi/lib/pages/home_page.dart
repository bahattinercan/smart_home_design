import 'package:flutter/material.dart';
import 'package:smart_home_denemesi/pages/general/devices.dart';
import 'package:smart_home_denemesi/pages/general/home.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedPageIndex = 1;

  List<Widget> _pages = [
    HomePageWidget(),
    DevicesPage(),
    HomePageWidget(),
    HomePageWidget(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedPageIndex,
        onTap: (value) => setState(() => _selectedPageIndex = value),
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_rounded), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.devices_rounded), label: "Devices"),
          BottomNavigationBarItem(icon: Icon(Icons.scanner_rounded), label: "Scan"),
          BottomNavigationBarItem(icon: Icon(Icons.person_rounded), label: "Profile"),
        ],
      ),
    );
  }
}
