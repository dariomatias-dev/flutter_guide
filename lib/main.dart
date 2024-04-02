import 'package:flutter/material.dart';

import 'package:flutter_guide/src/flutter_guide_app.dart';

import 'package:flutter_guide/src/core/constants/widgets.dart';

import 'package:flutter_guide/src/providers/widgets_map_inherited_widget.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    WidgetsMapInheritedWidget(
      widgetsMap: widgetsMap(),
      child: const FlutterGuideApp(),
    ),
  );
}
