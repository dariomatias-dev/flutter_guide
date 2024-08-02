import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

class UuidVersionModel {
  const UuidVersionModel({
    required this.version,
    required this.generator,
  });

  final int version;
  final String Function() generator;
}

const uuid = Uuid();

final uuidVersions = <UuidVersionModel>[
  UuidVersionModel(
    version: 1,
    generator: () {
      return uuid.v1();
    },
  ),
  UuidVersionModel(
    version: 4,
    generator: () {
      return uuid.v4();
    },
  ),
  UuidVersionModel(
    version: 5,
    generator: () {
      return uuid.v5(
        Uuid.NAMESPACE_URL,
        'https://flutter.dev',
      );
    },
  ),
  UuidVersionModel(
    version: 6,
    generator: () {
      return uuid.v6();
    },
  ),
  UuidVersionModel(
    version: 7,
    generator: () {
      return uuid.v7();
    },
  ),
  UuidVersionModel(
    version: 8,
    generator: () {
      return uuid.v8();
    },
  ),
];

class UuidSample extends StatefulWidget {
  const UuidSample({super.key});

  @override
  State<UuidSample> createState() => _UuidSampleState();
}

class _UuidSampleState extends State<UuidSample> {
  int _uuidVersionIndex = 0;
  String _uuid = '';

  void _generateUuid() {
    setState(() {
      _uuid = uuidVersions[_uuidVersionIndex].generator();
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
          children: <Widget>[
            Text(_uuid),
            const SizedBox(height: 12.0),
            DropdownButtonHideUnderline(
              child: DropdownButton(
                value: _uuidVersionIndex,
                items: List.generate(uuidVersions.length, (index) {
                  final uuidVersion = uuidVersions[index];

                  return DropdownMenuItem(
                    value: index,
                    child: Text(
                      'Version ${uuidVersion.version}',
                    ),
                  );
                }),
                onChanged: (value) {
                  setState(() {
                    _uuidVersionIndex = value!;
                  });
                },
              ),
            ),
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
