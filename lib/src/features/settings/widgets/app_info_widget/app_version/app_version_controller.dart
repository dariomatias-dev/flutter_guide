import 'package:flutter/material.dart';

import 'package:flutter_guide/src/providers/user_preferences_inherited_widget.dart';

class AppVersionController {
  String version = '•.•.•';

  Future<void> getAppVersion(
    BuildContext context,
    VoidCallback setStateCallback,
  ) async {
    version = UserPreferencesInheritedWidget.of(context)!.appVersion;

    setStateCallback();
  }
}
