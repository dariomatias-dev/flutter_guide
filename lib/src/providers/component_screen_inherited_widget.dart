import 'dart:io';

import 'package:flutter/material.dart';

class ComponentScreenInheritedWidget extends InheritedWidget {
  const ComponentScreenInheritedWidget({
    super.key,
    required this.componentFile,
    required super.child,
  });

  final File componentFile;

  static ComponentScreenInheritedWidget? of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<ComponentScreenInheritedWidget>();
  }

  @override
  bool updateShouldNotify(ComponentScreenInheritedWidget oldWidget) {
    return false;
  }
}
