import 'dart:io';

class ExampleController {
  ExampleController(
    String componentName,
  ) {
    getFile(componentName);
  }

  late File file;

  void getFile(
    String componentName,
  ) {
    'lib/src/features/example/samples';
    file = File(
      'lib/src/features/example/samples/${componentName.toLowerCase().replaceAll(' ', '_')}_sample.dart',
    );
  }
}
