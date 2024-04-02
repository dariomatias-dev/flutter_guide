import 'package:flutter/material.dart';

import 'package:flutter_guide/src/flutter_guide_app.dart';

import 'package:flutter_guide/src/core/constants/widgets.dart';

import 'package:flutter_guide/src/providers/widget_samples_inherited_widget.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final samples = widgetSamples();

  runApp(
    WidgetSamplesInheritedWidget(
      samples: samples,
      child: const FlutterGuideApp(),
    ),
  );
}
