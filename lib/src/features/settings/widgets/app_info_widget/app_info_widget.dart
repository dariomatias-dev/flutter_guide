import 'package:flutter/material.dart';

part 'source_code_button_widget.dart';

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
          const Text(
            'Version 0.1',
            style: TextStyle(
              fontSize: 10.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 20.0),
          const SourceCodeButtonWidget(),
        ],
      ),
    );
  }
}
