import 'package:flutter/material.dart';

import 'package:flutter_guide/src/core/routes/flutter_guide_routes.dart';
import 'package:flutter_guide/src/core/theme/theme.dart';
import 'package:flutter_guide/src/core/theme/theme_controller.dart';

class FlutterGuideApp extends StatefulWidget {
  const FlutterGuideApp({super.key});

  @override
  State<FlutterGuideApp> createState() => _FlutterGuideAppState();
}

class _FlutterGuideAppState extends State<FlutterGuideApp> {
  late ThemeController themeController;

  @override
  void didChangeDependencies() {
    themeController = ThemeController.instance;
    themeController.initialize(context);

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: themeController,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: "Flutter Guide",
          routes: flutterGuideRoutes,
          themeMode: themeController.themeMode,
          theme: ligthMode,
          darkTheme: darkMode,
        );
      },
    );
  }
}
