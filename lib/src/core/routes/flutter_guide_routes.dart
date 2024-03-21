import 'package:flutter_guide/src/core/routes/flutter_guide_route_names.dart';

import 'package:flutter_guide/src/screens/home_screen/home_screen.dart';
import 'package:flutter_guide/src/screens/packages_screen/packages_screen.dart';
import 'package:flutter_guide/src/screens/settings_screen/settings_screen.dart';
import 'package:flutter_guide/src/screens/widgets_screen/widgets_screen.dart';

final flutterGuideRoute = {
  FlutterGuideRouteNames.home: (_) => const HomeScreen(),
  FlutterGuideRouteNames.widgets: (_) => const WidgetsScreen(),
  FlutterGuideRouteNames.packages: (_) => const PackagesScreen(),
  FlutterGuideRouteNames.settings: (_) => const SettingsScreen(),
};
