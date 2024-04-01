import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';

part 'source_code_button_widget.dart';
part 'app_version.dart';

class AppInfoWidget extends StatelessWidget {
  const AppInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Image.asset(
            "assets/images/flutter_icon.png",
            width: 52.0,
            height: 52.0,
          ),
          const SizedBox(height: 16.0),
          const Text(
            'FlutterGuide',
            style: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.w700,
            ),
          ),
          const AppVersion(),
          const SizedBox(height: 20.0),
          const SourceCodeButtonWidget(),
        ],
      ),
    );
  }
}
