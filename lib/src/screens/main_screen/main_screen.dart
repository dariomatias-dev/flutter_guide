import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar_extend/salomon_bottom_bar.dart';

import 'package:flutter_guide/src/screens/home_screen/home_screen.dart';
import 'package:flutter_guide/src/screens/widgets_screen/widgets_screen.dart';
import 'package:flutter_guide/src/screens/packages_screen/packages_screen.dart';
import 'package:flutter_guide/src/screens/settings_screen/settings_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int screenIndex = 0;

  final screens = const <Widget>[
    HomeScreen(),
    WidgetsScreen(),
    PackagesScreen(),
    SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[screenIndex],
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: screenIndex,
        onTap: (value) {
          setState(() {
            screenIndex = value;
          });
        },
        items: [
          SalomonBottomBarItem(
            icon: const Icon(Icons.home),
            title: const Text("Home"),
            selectedColor: Colors.blue,
          ),
          SalomonBottomBarItem(
            icon: const Icon(Icons.extension),
            title: const Text("Widgets"),
            selectedColor: Colors.blue,
          ),
          SalomonBottomBarItem(
            icon: const Icon(Icons.archive),
            title: const Text("Packages"),
            selectedColor: Colors.blue,
          ),
          SalomonBottomBarItem(
            icon: const Icon(Icons.settings),
            title: const Text("Settings"),
            selectedColor: Colors.blue,
          ),
        ],
      ),
    );
  }
}
