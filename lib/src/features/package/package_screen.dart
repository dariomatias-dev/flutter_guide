import 'package:flutter/material.dart';

import 'package:flutter_guide/src/core/enums/component_type_enum.dart';

import 'package:flutter_guide/src/shared/widgets/component/component_screen.dart';

class PackageScreen extends StatelessWidget {
  const PackageScreen({
    super.key,
    required this.packageName,
  });

  final String packageName;

  @override
  Widget build(BuildContext context) {
    return ComponentScreen(
      componentType: ComponentType.package,
      componentName: packageName,
    );
  }
}
