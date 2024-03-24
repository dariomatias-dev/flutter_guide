import 'package:flutter/material.dart';
import 'package:flutter_guide/src/core/flutter_guide_colors.dart';
import 'package:salomon_bottom_bar_extend/salomon_bottom_bar.dart';

import 'package:flutter_guide/src/screens/home_screen/home_screen.dart';
import 'package:flutter_guide/src/screens/main_screen/widgets/mode_toggle_button_widget.dart';
import 'package:flutter_guide/src/screens/packages_screen/packages_screen.dart';
import 'package:flutter_guide/src/screens/settings_screen/settings_screen.dart';
import 'package:flutter_guide/src/screens/widgets_screen/widgets_screen.dart';

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
      appBar: AppBar(
        backgroundColor: FlutterGuideColors.ligthBlue,
        title: Row(
          children: [
            Image.asset(
              'assets/images/flutter_icon.png',
              width: 20.0,
              height: 20.0,
              fit: BoxFit.cover,
            ),
            const SizedBox(width: 16.0),
            const Text(
              'FlutterGuide',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        actions: [
          const ModeToggleButtonWidget(),
          const SizedBox(width: 20.0),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.bookmark_border,
            ),
          ),
          const SizedBox(width: 8.0),
        ],
      ),
      body: screens[screenIndex],
      bottomNavigationBar: SalomonBottomBar(
        backgroundColor: FlutterGuideColors.ligthBlue,
        currentIndex: screenIndex,
        onTap: (value) {
          setState(() {
            screenIndex = value;
          });
        },
        items: [
          SalomonBottomBarItem(
            unselectedColor: Colors.grey.shade900,
            icon: const Icon(Icons.home_outlined),
            title: const Text("Home"),
            selectedColor: Colors.blue,
          ),
          SalomonBottomBarItem(
            unselectedColor: Colors.grey.shade900,
            icon: const Icon(Icons.extension_outlined),
            title: const Text("Widgets"),
            selectedColor: Colors.blue,
          ),
          SalomonBottomBarItem(
            unselectedColor: Colors.grey.shade900,
            icon: const Icon(Icons.archive_outlined),
            title: const Text("Packages"),
            selectedColor: Colors.blue,
          ),
          SalomonBottomBarItem(
            unselectedColor: Colors.grey.shade900,
            icon: const Icon(Icons.settings_outlined),
            title: const Text("Settings"),
            selectedColor: Colors.blue,
          ),
        ],
      ),
    );
  }
}
