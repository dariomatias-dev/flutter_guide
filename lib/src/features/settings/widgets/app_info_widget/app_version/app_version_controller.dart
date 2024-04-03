import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';

class AppVersionController {
  String version = '--';

  Future<void> getAppVersion(
    VoidCallback setStateCallback,
  ) async {
    final packageInfo = await PackageInfo.fromPlatform();

    version = packageInfo.version;

    setStateCallback();
  }
}
