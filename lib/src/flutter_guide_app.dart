import 'package:flutter/material.dart';

import 'package:flutter_guide/src/core/routes/flutter_guide_routes.dart';
import 'package:flutter_guide/src/core/theme/theme.dart';
import 'package:flutter_guide/src/core/theme/theme_controller.dart';

class FlutterGuideApp extends StatelessWidget {
  const FlutterGuideApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: ThemeController.instance,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: "Flutter Guide",
          routes: flutterGuideRoute,
          themeMode: ThemeController.instance.themeMode,
          theme: ligthMode,
          darkTheme: darkMode,
        );
      },
    );
  }
}
