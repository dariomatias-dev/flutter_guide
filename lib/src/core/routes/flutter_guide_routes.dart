import 'package:flutter_guide/src/core/routes/flutter_guide_route_names.dart';

// Main Screen
import 'package:flutter_guide/src/features/main/main_screen.dart';

import 'package:flutter_guide/src/features/examples/examples_screen.dart';
import 'package:flutter_guide/src/features/uis/uis_screen.dart';

// Saved Screens
import 'package:flutter_guide/src/features/saved_packages/saved_packages_screen.dart';
import 'package:flutter_guide/src/features/saved_widgets/saved_widgets_screen.dart';

final flutterGuideRoutes = {
  // Main Screen
  FlutterGuideRouteNames.main: (_) => const MainScreen(),

  FlutterGuideRouteNames.examples: (_) => const ExamplesScreen(),
  FlutterGuideRouteNames.uis: (_) => const UisScreen(),

  // Saved Screens
  FlutterGuideRouteNames.savedWidgets: (_) => const SavedWidgetsScreen(),
  FlutterGuideRouteNames.savedPackages: (_) => const SavedPackagesScreen(),
};
