import 'package:flutter/material.dart';

import 'package:flutter_guide/src/features/settings/widgets/app_info_widget/app_version/app_version_controller.dart';

class AppVersionWidget extends StatefulWidget {
  const AppVersionWidget({super.key});

  @override
  State<AppVersionWidget> createState() => _AppVersionWidgetState();
}

class _AppVersionWidgetState extends State<AppVersionWidget> {
  final _controller = AppVersionController();

  @override
  void initState() {
    _controller.getAppVersion(() {
      setState(() {});
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      'Version ${_controller.version}',
      style: const TextStyle(
        fontSize: 10.0,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
