import 'package:flutter_guide/src/core/routes/flutter_guide_route_names.dart';

import 'package:flutter_guide/src/features/main/main_screen.dart';
import 'package:flutter_guide/src/features/saved_widgets/saved_widgets_screen.dart';

final flutterGuideRoutes = {
  FlutterGuideRouteNames.main: (_) => const MainScreen(),
  FlutterGuideRouteNames.savedWidgets: (_) => const SavedWidgets(),
};
