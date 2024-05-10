import 'dart:io';

class UiController {
  UiController(
    String componentName,
  ) {
    getFile(componentName);
  }

  late File file;

  void getFile(
    String componentName,
  ) {
    'lib/src/features/ui/samples';
    file = File(
      'lib/src/features/ui/samples/${componentName.toLowerCase().replaceAll(' ', '_')}_sample.dart',
    );
  }
}
