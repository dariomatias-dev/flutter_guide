import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

class UuidSample extends StatefulWidget {
  const UuidSample({super.key});

  @override
  State<UuidSample> createState() => _UuidSampleState();
}

class _UuidSampleState extends State<UuidSample> {
  String _uuid = '';

  void _generateUuid() {
    const uuid = Uuid();

    setState(() {
      _uuid = uuid.v4();
    });
  }

  @override
  void initState() {
    _generateUuid();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(_uuid),
            const SizedBox(height: 12.0),
            ElevatedButton(
              onPressed: _generateUuid,
              child: const Text(
                'Generate UUID',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
