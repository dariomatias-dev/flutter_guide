import 'package:flutter/material.dart';

class SegmentedButtonSample extends StatelessWidget {
  const SegmentedButtonSample({super.key});

  TextStyle get _defaultTextStyle => const TextStyle(
        fontSize: 12.0,
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ChoosePeriodWidget(
              defaultTextStyle: _defaultTextStyle,
            ),
            const SizedBox(height: 20.0),
            ChooseColorsWidget(
              defaultTextStyle: _defaultTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}

class ChoosePeriodWidget extends StatefulWidget {
  const ChoosePeriodWidget({
    super.key,
    required this.defaultTextStyle,
  });

  final TextStyle defaultTextStyle;

  @override
  State<ChoosePeriodWidget> createState() => _ChoosePeriodStateWidget();
}

class _ChoosePeriodStateWidget extends State<ChoosePeriodWidget> {
  String _selected = 'day';

  @override
  Widget build(BuildContext context) {
    return SegmentedButton<String>(
      segments: <ButtonSegment<String>>[
        ButtonSegment<String>(
          value: 'day',
          icon: const Icon(
            Icons.calendar_view_day,
          ),
          label: Text(
            'Day',
            style: widget.defaultTextStyle,
          ),
        ),
        ButtonSegment<String>(
          value: 'week',
          icon: const Icon(
            Icons.calendar_view_week,
          ),
          label: Text(
            'Week',
            style: widget.defaultTextStyle,
          ),
        ),
        ButtonSegment<String>(
          value: 'month',
          icon: const Icon(
            Icons.calendar_view_month,
          ),
          label: Text(
            'Month',
            style: widget.defaultTextStyle,
          ),
        ),
        ButtonSegment<String>(
          value: 'year',
          icon: const Icon(
            Icons.calendar_today,
          ),
          label: Text(
            'Year',
            style: widget.defaultTextStyle,
          ),
        ),
      ],
      selected: <String>{_selected},
      onSelectionChanged: (value) {
        setState(() {
          _selected = value.first;
        });
      },
    );
  }
}

enum Color {
  red,
  green,
  blue,
}

class ChooseColorsWidget extends StatefulWidget {
  const ChooseColorsWidget({
    super.key,
    required this.defaultTextStyle,
  });

  final TextStyle defaultTextStyle;

  @override
  State<ChooseColorsWidget> createState() => _ChooseColorsWidgetState();
}

class _ChooseColorsWidgetState extends State<ChooseColorsWidget> {
  Set<Color> _colors = <Color>{Color.red};

  @override
  Widget build(BuildContext context) {
    return SegmentedButton<Color>(
      segments: <ButtonSegment<Color>>[
        ButtonSegment<Color>(
          value: Color.red,
          label: Text(
            'Red',
            style: widget.defaultTextStyle,
          ),
        ),
        ButtonSegment<Color>(
          value: Color.green,
          label: Text(
            'Green',
            style: widget.defaultTextStyle,
          ),
        ),
        ButtonSegment<Color>(
          value: Color.blue,
          label: Text(
            'Blue',
            style: widget.defaultTextStyle,
          ),
        ),
      ],
      selected: _colors,
      onSelectionChanged: (value) {
        setState(() {
          _colors = value;
        });
      },
      multiSelectionEnabled: true,
    );
  }
}
