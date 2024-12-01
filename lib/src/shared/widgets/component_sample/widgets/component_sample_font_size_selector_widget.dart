import 'package:flutter/material.dart';

import 'package:flutter_guide/src/core/flutter_guide_colors.dart';

class ComponentSampleFontSizeSelectorWidget extends StatelessWidget {
  const ComponentSampleFontSizeSelectorWidget({
    super.key,
    required this.action,
    required this.icon,
  });

  final VoidCallback? action;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 56.0,
      height: 56.0,
      child: ElevatedButton(
        onPressed: action,
        style: ElevatedButton.styleFrom(
          backgroundColor: Theme.of(context).colorScheme.primary,
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
        ),
        child: Icon(
          icon,
          color: Theme.of(context).brightness == Brightness.light
              ? FlutterGuideColors.white
              : FlutterGuideColors.darkNeutral,
        ),
      ),
    );
  }
}
