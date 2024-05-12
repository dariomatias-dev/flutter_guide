import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoSliderSample extends StatelessWidget {
  const CupertinoSliderSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(
          scrollbars: false,
        ),
        child: const SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: 12.0,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CupertinoSliderTemplate(
                  title: 'Standard',
                ),
                Divider(),
                CupertinoSliderTemplate(
                  title: '0 to 100 without divisions',
                  max: 100.0,
                ),
                Divider(),
                CupertinoSliderTemplate(
                  title: '50 to 100 with 50 divisions',
                  min: 50.0,
                  max: 100.0,
                  divisions: 50,
                ),
                Divider(),
                CupertinoSliderTemplate(
                  title: '0 to 100 with 20 divisions',
                  max: 100.0,
                  divisions: 20,
                ),
                Divider(),
                CupertinoSliderTemplate(
                  title: '0 to 100 with 100 divisions',
                  max: 100.0,
                  divisions: 100,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CupertinoSliderTemplate extends StatefulWidget {
  const CupertinoSliderTemplate({
    super.key,
    required this.title,
    this.min = 0.0,
    this.max = 1.0,
    this.divisions,
  });

  final String title;
  final double min;
  final double max;
  final int? divisions;

  @override
  State<CupertinoSliderTemplate> createState() =>
      _CupertinoSliderTemplateState();
}

class _CupertinoSliderTemplateState extends State<CupertinoSliderTemplate> {
  bool _showFloatingPoint = true;
  double _value = 0.0;

  @override
  void initState() {
    _value = widget.min;

    if (widget.divisions != null) {
      final divisionResult = widget.max / widget.divisions!;
      _showFloatingPoint = divisionResult != divisionResult.floor();
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          widget.title,
          style: const TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          (_showFloatingPoint ? _value : _value.floor()).toString(),
        ),
        CupertinoSlider(
          value: _value,
          min: widget.min,
          max: widget.max,
          divisions: widget.divisions,
          onChanged: (value) {
            setState(() {
              _value = value;
            });
          },
        ),
      ],
    );
  }
}
