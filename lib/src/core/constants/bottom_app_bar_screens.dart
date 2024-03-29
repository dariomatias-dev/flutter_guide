import 'package:flutter_guide/src/shared/models/screen_model.dart';

import 'package:flutter_guide/src/features/home/home_screen.dart';
import 'package:flutter_guide/src/features/packages/packages_screen.dart';
import 'package:flutter_guide/src/features/settings/settings_screen.dart';
import 'package:flutter_guide/src/features/widgets/widgets_screen.dart';

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
