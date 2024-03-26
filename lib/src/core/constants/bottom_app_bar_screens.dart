import 'package:flutter_guide/src/models/screen_model.dart';

import 'package:flutter_guide/src/screens/home_screen/home_screen.dart';
import 'package:flutter_guide/src/screens/packages_screen/packages_screen.dart';
import 'package:flutter_guide/src/screens/settings_screen/settings_screen.dart';
import 'package:flutter_guide/src/screens/widgets_screen/widgets_screen.dart';

const bottomAppBarScreens = <ScreenModel>[
  ScreenModel(
    title: 'FlutterGuide',
    screen: HomeScreen(),
  ),
  ScreenModel(
    title: 'Widgets',
    screen: WidgetsScreen(),
  ),
  ScreenModel(
    title: 'Packages',
    screen: PackagesScreen(),
  ),
  ScreenModel(
    title: 'Settings',
    screen: SettingsScreen(),
  ),
];
