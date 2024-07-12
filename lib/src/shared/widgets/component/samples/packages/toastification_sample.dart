import 'package:flutter/material.dart';
import 'package:toastification/toastification.dart';

class ToastificationTypeModel {
  const ToastificationTypeModel({
    required this.title,
    required this.type,
  });

  final String title;
  final ToastificationType type;
}

const toastificationTypes = <ToastificationTypeModel>[
  ToastificationTypeModel(
    title: 'Error',
    type: ToastificationType.error,
  ),
  ToastificationTypeModel(
    title: 'Info',
    type: ToastificationType.info,
  ),
  ToastificationTypeModel(
    title: 'Success',
    type: ToastificationType.success,
  ),
  ToastificationTypeModel(
    title: 'Warning',
    type: ToastificationType.warning,
  ),
];

class ToastificationStyleModel {
  const ToastificationStyleModel({
    required this.title,
    required this.style,
  });

  final String title;
  final ToastificationStyle style;
}

const toastificationStyles = <ToastificationStyleModel>[
  ToastificationStyleModel(
    title: 'FillColored',
    style: ToastificationStyle.fillColored,
  ),
  ToastificationStyleModel(
    title: 'Flat',
    style: ToastificationStyle.flat,
  ),
  ToastificationStyleModel(
    title: 'FlatColored',
    style: ToastificationStyle.flatColored,
  ),
  ToastificationStyleModel(
    title: 'Minimal',
    style: ToastificationStyle.minimal,
  ),
  ToastificationStyleModel(
    title: 'Simple',
    style: ToastificationStyle.simple,
  ),
];

class ToastificationSample extends StatefulWidget {
  const ToastificationSample({super.key});

  @override
  State<ToastificationSample> createState() => _ToastificationSampleState();
}

class _ToastificationSampleState extends State<ToastificationSample> {
  ToastificationType _toastificationType = ToastificationType.success;
  ToastificationStyle _toastificationStyle = ToastificationStyle.flat;

  void _showNotification() {
    toastification.show(
      context: context,
      type: _toastificationType,
      title: const Text('Message'),
      autoCloseDuration: const Duration(
        seconds: 10,
      ),
      style: _toastificationStyle,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            DropdownButtonHideUnderline(
              child: DropdownButton(
                value: _toastificationType,
                items: List.generate(
                  toastificationTypes.length,
                  (index) {
                    final toastificationType = toastificationTypes[index];

                    return DropdownMenuItem(
                      value: toastificationType.type,
                      child: Text(
                        toastificationType.title,
                      ),
                    );
                  },
                ),
                onChanged: (value) {
                  setState(() {
                    _toastificationType = value!;
                  });
                },
              ),
            ),
            const SizedBox(height: 12.0),
            DropdownButtonHideUnderline(
              child: DropdownButton(
                value: _toastificationStyle,
                items: List.generate(
                  toastificationStyles.length,
                  (index) {
                    final toastificationStyle = toastificationStyles[index];

                    return DropdownMenuItem(
                      value: toastificationStyle.style,
                      child: Text(
                        toastificationStyle.title,
                      ),
                    );
                  },
                ),
                onChanged: (value) {
                  setState(() {
                    _toastificationStyle = value!;
                  });
                },
              ),
            ),
            const SizedBox(height: 12.0),
            ElevatedButton(
              onPressed: _showNotification,
              child: const Text('Show'),
            ),
          ],
        ),
      ),
    );
  }
}
