import 'package:flutter/material.dart';

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

class SegmentedButtonSample extends StatefulWidget {
  const SegmentedButtonSample({super.key});

  @override
  State<SegmentedButtonSample> createState() => _SegmentedButtonSampleState();
}

class _SegmentedButtonSampleState extends State<SegmentedButtonSample> {
  final _periodSelected = ValueNotifier(periods.first);
  final _colorSelected = ValueNotifier(
    <Color>{colors.first},
  );

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
            ValueListenableBuilder(
              valueListenable: _periodSelected,
              builder: (context, value, child) {
                return Column(
                  children: <Widget>[
                    ChoosePeriodWidget(
                      periodSelected: _periodSelected,
                      defaultTextStyle: _defaultTextStyle,
                    ),
                    const SizedBox(height: 12.0),
                    ChoosePeriodWidget(
                      periodSelected: _periodSelected,
                      disabled: true,
                      defaultTextStyle: _defaultTextStyle,
                    ),
                  ],
                );
              },
            ),
            const SizedBox(height: 24.0),
            ValueListenableBuilder(
              valueListenable: _colorSelected,
              builder: (context, value, child) {
                return Column(
                  children: <Widget>[
                    ChooseColorsWidget(
                      colorSelected: _colorSelected,
                      defaultTextStyle: _defaultTextStyle,
                    ),
                    const SizedBox(height: 12.0),
                    ChooseColorsWidget(
                      colorSelected: _colorSelected,
                      disabled: true,
                      defaultTextStyle: _defaultTextStyle,
                    ),
                  ],
                );
              },
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
    required this.periodSelected,
    this.disabled = false,
    required this.defaultTextStyle,
  });

  final ValueNotifier<PeriodModel> periodSelected;
  final bool disabled;
  final TextStyle defaultTextStyle;

  @override
  State<ChoosePeriodWidget> createState() => _ChoosePeriodStateWidget();
}

class _ChoosePeriodStateWidget extends State<ChoosePeriodWidget> {
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
      selected: <PeriodModel>{widget.periodSelected.value},
      onSelectionChanged: widget.disabled
          ? null
          : (value) {
              widget.periodSelected.value = value.first;
            },
    );
  }
}

class ChooseColorsWidget extends StatefulWidget {
  const ChooseColorsWidget({
    super.key,
    required this.colorSelected,
    this.disabled = false,
    required this.defaultTextStyle,
  });

  final ValueNotifier<Set<Color>> colorSelected;
  final bool disabled;
  final TextStyle defaultTextStyle;

  @override
  State<ChooseColorsWidget> createState() => _ChooseColorsWidgetState();
}

class _ChooseColorsWidgetState extends State<ChooseColorsWidget> {
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
      selected: widget.colorSelected.value,
      onSelectionChanged: widget.disabled
          ? null
          : (value) {
              widget.colorSelected.value = value;
            },
      multiSelectionEnabled: true,
    );
  }
}
