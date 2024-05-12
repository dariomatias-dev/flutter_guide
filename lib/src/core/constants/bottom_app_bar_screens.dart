import 'package:flutter/material.dart';
import 'package:flutter_guide/src/core/constants/components/packages.dart';
import 'package:flutter_guide/src/core/constants/components/widgets.dart';
import 'package:flutter_guide/src/core/enums/component_type_enum.dart';

import 'package:flutter_guide/src/features/home/home_screen.dart';
import 'package:flutter_guide/src/features/settings/settings_screen.dart';

import 'package:flutter_guide/src/shared/models/screen_model.dart';
import 'package:flutter_guide/src/shared/widgets/components/components_screen.dart';

final bottomAppBarScreens = <ScreenModel>[
  const ScreenModel(
    title: 'FlutterGuide',
    screen: HomeScreen(),
  ),
  ScreenModel(
    title: 'Widgets',
    screen: ComponentsScreen(
      key: GlobalKey(),
      componentType: ComponentType.widget,
      components: widgets,
    ),
  ),
  ScreenModel(
    title: 'Packages',
    screen: ComponentsScreen(
      key: GlobalKey(),
      componentType: ComponentType.package,
      components: packages,
    ),
  ),
  const ScreenModel(
    title: 'Settings',
    screen: SettingsScreen(),
  ),
];
