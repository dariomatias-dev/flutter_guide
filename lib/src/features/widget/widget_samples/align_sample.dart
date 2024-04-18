import 'package:flutter/material.dart';

class AlignmentModel {
  const AlignmentModel({
    required this.name,
    required this.alignment,
  });

  final String name;
  final Alignment alignment;
}

const alignments = <AlignmentModel>[
  AlignmentModel(
    name: 'Bottom Center',
    alignment: Alignment.bottomCenter,
  ),
  AlignmentModel(
    name: 'Bottom Left',
    alignment: Alignment.bottomLeft,
  ),
  AlignmentModel(
    name: 'Bottom Right',
    alignment: Alignment.bottomRight,
  ),
  AlignmentModel(
    name: 'Center',
    alignment: Alignment.center,
  ),
  AlignmentModel(
    name: 'Center Left',
    alignment: Alignment.centerLeft,
  ),
  AlignmentModel(
    name: 'Center Right',
    alignment: Alignment.centerRight,
  ),
  AlignmentModel(
    name: 'Top Center',
    alignment: Alignment.topCenter,
  ),
  AlignmentModel(
    name: 'Top Left',
    alignment: Alignment.topLeft,
  ),
  AlignmentModel(
    name: 'Top Right',
    alignment: Alignment.topRight,
  ),
];

class AlignSample extends StatefulWidget {
  const AlignSample({super.key});

  @override
  State<AlignSample> createState() => _AlignSampleState();
}

class _AlignSampleState extends State<AlignSample> {
  AlignmentModel _alignment = const AlignmentModel(
    name: 'Center',
    alignment: Alignment.center,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Align(
              alignment: _alignment.alignment,
              child: const Text('Widget Align'),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(
              vertical: 12.0,
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                value: _alignment,
                items: List.generate(alignments.length, (index) {
                  final alignment = alignments[index];
              
                  return DropdownMenuItem(
                    value: alignment,
                    child: Text(alignment.name),
                  );
                }),
                onChanged: (value) {
                  setState(() {
                    _alignment = value!;
                  });
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
