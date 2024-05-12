import 'package:flutter/material.dart';
import 'package:msh_checkbox/msh_checkbox.dart';

const mshCheckboxStyles = [
  MSHCheckboxStyle.stroke,
  MSHCheckboxStyle.fillFade,
  MSHCheckboxStyle.fillScaleCheck,
  MSHCheckboxStyle.fillScaleColor,
];

class MshCheckboxSample extends StatelessWidget {
  const MshCheckboxSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(mshCheckboxStyles.length * 2 - 1, (index) {
            if (index % 2 == 1) {
              return const SizedBox(height: 12.0);
            }

            return MshCheckboxItemSample(
              style: mshCheckboxStyles[index ~/ 2],
            );
          }),
        ),
      ),
    );
  }
}

class MshCheckboxItemSample extends StatefulWidget {
  const MshCheckboxItemSample({
    super.key,
    required this.style,
  });

  final MSHCheckboxStyle style;

  @override
  State<MshCheckboxItemSample> createState() => _MshCheckboxItemSampleState();
}

class _MshCheckboxItemSampleState extends State<MshCheckboxItemSample> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return MSHCheckbox(
      value: _isChecked,
      size: 32.0,
      style: widget.style,
      colorConfig: MSHColorConfig(
        checkColor: (value) {
          return Colors.blue;
        },
        borderColor: (value) {
          return Colors.blue;
        },
        fillColor: (value) {
          return Colors.black.withOpacity(0.8);
        },
      ),
      onChanged: (selected) {
        setState(() {
          _isChecked = !_isChecked;
        });
      },
    );
  }
}
