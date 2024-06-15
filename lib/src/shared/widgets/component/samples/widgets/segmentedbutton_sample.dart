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

class PeriodModel {
  const PeriodModel({
    required this.name,
    required this.iconData,
  });

  final String name;
  final IconData iconData;
}

const periods = <PeriodModel>[
  PeriodModel(
    name: 'Day',
    iconData: Icons.calendar_view_day,
  ),
  PeriodModel(
    name: 'Week',
    iconData: Icons.calendar_view_week,
  ),
  PeriodModel(
    name: 'Month',
    iconData: Icons.calendar_view_month,
  ),
  PeriodModel(
    name: 'Year',
    iconData: Icons.calendar_today,
  ),
];

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
  PeriodModel _selected = periods.first;

  @override
  Widget build(BuildContext context) {
    return SegmentedButton<PeriodModel>(
      segments: List.generate(periods.length, (index) {
        final period = periods[index];

        return ButtonSegment<PeriodModel>(
          value: period,
          icon: Icon(
            period.iconData,
          ),
          label: Text(
            period.name,
            style: widget.defaultTextStyle,
          ),
        );
      }),
      selected: <PeriodModel>{_selected},
      onSelectionChanged: (value) {
        setState(() {
          _selected = value.first;
        });
      },
    );
  }
}

enum Color {
  blue,
  green,
  red,
}

final colors = <Color>[
  Color.red,
  Color.blue,
  Color.green,
];

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
  Set<Color> _colors = <Color>{colors.first};

  @override
  Widget build(BuildContext context) {
    return SegmentedButton<Color>(
      segments: List.generate(colors.length, (index) {
        final color = colors[index];

        return ButtonSegment<Color>(
          value: color,
          label: Text(
            '${color.name[0].toUpperCase()}${color.name.substring(1)}',
            style: widget.defaultTextStyle,
          ),
        );
      }),
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
