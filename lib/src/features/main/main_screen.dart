import 'package:flutter/material.dart';
import 'package:flutter_guide/src/core/routes/flutter_guide_route_names.dart';
import 'package:salomon_bottom_bar_extend/salomon_bottom_bar.dart';

import 'package:flutter_guide/src/core/constants/bottom_app_bar_screens.dart';

import 'package:flutter_guide/src/shared/widgets/change_theme_button_widget/change_theme_button_widget.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int screenIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        title: Row(
          children: [
            Image.asset(
              'assets/images/flutter_icon.png',
              width: 20.0,
              height: 20.0,
              fit: BoxFit.cover,
            ),
            const SizedBox(width: 16.0),
            Text(
              bottomAppBarScreens[screenIndex].title,
              style: const TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        actions: [
          const ChangeThemeButtonWidget(),
          const SizedBox(width: 4.0),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(
                context,
                FlutterGuideRouteNames.savedWidgets,
              );
            },
            icon: Icon(
              Icons.bookmark_border,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          const SizedBox(width: 4.0),
        ],
      ),
      body: bottomAppBarScreens[screenIndex].screen,
      bottomNavigationBar: SalomonBottomBar(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        currentIndex: screenIndex,
        onTap: (value) {
          setState(() {
            screenIndex = value;
          });
        },
        items: [
          SalomonBottomBarItem(
            unselectedColor: Theme.of(context).colorScheme.primary,
            icon: const Icon(Icons.home_outlined),
            title: const Text("Home"),
            selectedColor: Colors.blue,
          ),
          SalomonBottomBarItem(
            unselectedColor: Theme.of(context).colorScheme.primary,
            icon: const Icon(Icons.extension_outlined),
            title: const Text("Widgets"),
            selectedColor: Colors.blue,
          ),
          SalomonBottomBarItem(
            unselectedColor: Theme.of(context).colorScheme.primary,
            icon: const Icon(Icons.archive_outlined),
            title: const Text("Packages"),
            selectedColor: Colors.blue,
          ),
          SalomonBottomBarItem(
            unselectedColor: Theme.of(context).colorScheme.primary,
            icon: const Icon(Icons.settings_outlined),
            title: const Text("Settings"),
            selectedColor: Colors.blue,
          ),
        ],
      ),
    );
  }
}
