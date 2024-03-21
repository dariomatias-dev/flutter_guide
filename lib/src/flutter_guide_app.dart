import 'package:flutter/material.dart';

import 'package:flutter_guide/src/core/routes/flutter_guide_routes.dart';

class FlutterGuideApp extends StatelessWidget {
  const FlutterGuideApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Guide",
      routes: flutterGuideRoute,
    );
  }
}
