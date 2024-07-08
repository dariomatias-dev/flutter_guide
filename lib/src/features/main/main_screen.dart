import 'package:flutter/material.dart';

import 'package:flutter_guide/src/core/constants/bottom_app_bar_screens.dart';

import 'package:flutter_guide/src/features/main/main_controller.dart';
import 'package:flutter_guide/src/features/main/widgets/bottom_navigation_bar_widget.dart';
import 'package:flutter_guide/src/features/main/widgets/main_app_bar/main_app_bar_widget.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final _controller = MainController();

  void updateScreenIndex(int value) {
    setState(() {
      _controller.screenIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBarWidget(
        title: bottomAppBarScreens[_controller.screenIndex].title,
      ),
      body: bottomAppBarScreens[_controller.screenIndex].screen,
      bottomNavigationBar: BottomNavigationBarWidget(
        screenIndex: _controller.screenIndex,
        updateScreenIndex: (value) {
          _controller.updateScreenIndex(
            () => setState(() {}),
            value,
          );
        },
      ),
    );
  }
}
