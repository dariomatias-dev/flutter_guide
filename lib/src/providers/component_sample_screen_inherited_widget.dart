import 'package:flutter/material.dart';

class ComponentSampleScreenInheritedWidget extends InheritedWidget {
  const ComponentSampleScreenInheritedWidget({
    super.key,
    required this.file,
    required super.child,
  });

  final String file;

  static ComponentSampleScreenInheritedWidget? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<
        ComponentSampleScreenInheritedWidget>();
  }

  @override
  bool updateShouldNotify(ComponentSampleScreenInheritedWidget oldWidget) {
    return true;
  }
}
