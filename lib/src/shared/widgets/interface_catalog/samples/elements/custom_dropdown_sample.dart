import 'package:flutter/material.dart';

class MenuOptionModel<T> {
  const MenuOptionModel({
    required this.value,
    required this.name,
  });

  final T value;
  final String name;
}

const daysOfWeekNames = <String>[
  'Monday',
  'Tuesday',
  'Wednesday',
  'Thursday',
  'Friday',
  'Saturday',
  'Sunday',
];

final daysOfWeek = List.generate(daysOfWeekNames.length, (index) {
  return MenuOptionModel(
    value: index,
    name: daysOfWeekNames[index],
  );
});

const monthsOfYearNames = <String>[
  'January',
  'February',
  'March',
  'April',
  'May',
  'June',
  'July',
  'August',
  'September',
  'October',
  'November',
  'December'
];

final monthsOfYear = List.generate(monthsOfYearNames.length, (index) {
  return MenuOptionModel(
    value: index + 1,
    name: monthsOfYearNames[index],
  );
});

const worldCitiesNames = <String>[
  'New York',
  'Los Angeles',
  'London',
  'Paris',
  'Tokyo',
  'Beijing',
  'Sydney',
  'Rio de Janeiro',
  'Dubai',
  'Moscow',
  'Toronto',
  'Hong Kong',
  'Berlin',
  'Singapore',
  'Mumbai',
  'Cape Town',
  'Rome',
  'Istanbul',
  'São Paulo',
  'Bangkok',
];

final worldCities = List.generate(worldCitiesNames.length, (index) {
  final worldCitiesName = worldCitiesNames[index];

  return MenuOptionModel(
    value: worldCitiesName.toLowerCase().replaceAll(' ', '_'),
    name: worldCitiesNames[index],
  );
});

class CustomDropdownSample extends StatefulWidget {
  const CustomDropdownSample({super.key});

  @override
  State<CustomDropdownSample> createState() => _CustomDropdownSampleState();
}

class _CustomDropdownSampleState extends State<CustomDropdownSample> {
  void _showSnackBar(
    String fieldName,
    String optionName,
  ) {
    final snackBar = SnackBar(
      content: Text('$fieldName: $optionName'),
      action: SnackBarAction(
        onPressed: () {},
        label: 'Ok',
      ),
    );

    ScaffoldMessenger.of(context).showSnackBar(
      snackBar,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 12.0,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              DropdownButtonWidget(
                title: 'Days of the Week',
                options: daysOfWeek,
                onChange: (value) {
                  _showSnackBar(
                    'Days of the Week',
                    value.name,
                  );
                },
              ),
              const SizedBox(height: 16.0),
              DropdownButtonWidget(
                title: 'Months of the Year',
                options: monthsOfYear,
                onChange: (value) {
                  _showSnackBar(
                    'Months of the Year',
                    value.name,
                  );
                },
              ),
              const SizedBox(height: 16.0),
              DropdownButtonWidget(
                title: 'Cities of the World',
                options: worldCities,
                onChange: (value) {
                  _showSnackBar(
                    'Cities of the World',
                    value.name,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DropdownButtonWidget extends StatefulWidget {
  const DropdownButtonWidget({
    super.key,
    required this.title,
    required this.options,
    required this.onChange,
  });

  final String title;
  final List<MenuOptionModel> options;
  final void Function(
    MenuOptionModel value,
  ) onChange;

  @override
  State<DropdownButtonWidget> createState() => _DropdownButtonWidgetState();
}

class _DropdownButtonWidgetState extends State<DropdownButtonWidget> {
  final _dropdownButtonKey = GlobalKey();

  OverlayEntry? _overlayEntry;
  bool _isOpen = false;
  MenuOptionModel? _selectedValue;

  BorderRadius get _defaultBorderRadius => BorderRadius.circular(20.0);

  BoxShadow get _boxShadow => BoxShadow(
        color: Colors.black.withOpacity(0.3),
        blurRadius: 6.0,
        spreadRadius: 0.0,
        offset: const Offset(0, 1),
      );

  void _showMenu() {
    final renderBox =
        _dropdownButtonKey.currentContext!.findRenderObject() as RenderBox;
    final position = renderBox.globalToLocal(Offset.zero);
    final topPadding = position.dy * -1 + 14.0;

    _overlayEntry = OverlayEntry(
      builder: (context) {
        return MenuWidget(
          removeMenu: _removeMenu,
          boxShadow: _boxShadow,
          borderRadius: _defaultBorderRadius,
          topPadding: topPadding,
          options: widget.options,
          onChange: (value) {
            widget.onChange(value);

            _selectedValue = value;
          },
        );
      },
    );

    Overlay.of(context).insert(_overlayEntry!);
  }

  void _removeMenu() {
    _isOpen = !_isOpen;
    _overlayEntry?.remove();

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _isOpen = !_isOpen;
        _showMenu();

        setState(() {});
      },
      child: Container(
        key: _dropdownButtonKey,
        width: double.infinity,
        padding: const EdgeInsets.symmetric(
          vertical: 10.0,
          horizontal: 12.0,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: _defaultBorderRadius,
          boxShadow: <BoxShadow>[
            _boxShadow,
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              _selectedValue?.name ?? widget.title,
            ),
            Icon(
              _isOpen
                  ? Icons.keyboard_arrow_up_rounded
                  : Icons.keyboard_arrow_down_rounded,
            ),
          ],
        ),
      ),
    );
  }
}

class MenuWidget extends StatefulWidget {
  const MenuWidget({
    super.key,
    required this.removeMenu,
    required this.boxShadow,
    required this.borderRadius,
    required this.topPadding,
    required this.options,
    required this.onChange,
  });

  final VoidCallback removeMenu;
  final BoxShadow boxShadow;
  final BorderRadius borderRadius;
  final double topPadding;
  final List<MenuOptionModel> options;
  final void Function(
    MenuOptionModel value,
  ) onChange;

  @override
  State<MenuWidget> createState() => _MenuWidgetState();
}

class _MenuWidgetState extends State<MenuWidget> {
  double _opacity = 0.0;

  Future<void> _update() async {
    await Future.delayed(
      const Duration(
        milliseconds: 10,
      ),
    );

    setState(() {
      _opacity = 1.0;
    });
  }

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _update();
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.removeMenu,
      child: Material(
        color: Colors.transparent,
        child: Padding(
          padding: EdgeInsets.only(
            top: widget.topPadding,
            right: 12.0,
            left: 12.0,
          ),
          child: Column(
            children: <Widget>[
              ConstrainedBox(
                constraints: BoxConstraints(
                  maxHeight: MediaQuery.sizeOf(context).height -
                      widget.topPadding -
                      40.0,
                ),
                child: AnimatedOpacity(
                  opacity: _opacity,
                  duration: const Duration(
                    milliseconds: 100,
                  ),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 6.0,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: widget.borderRadius,
                      boxShadow: <BoxShadow>[
                        widget.boxShadow,
                      ],
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        children: List.generate(widget.options.length, (index) {
                          final option = widget.options[index];

                          return GestureDetector(
                            onTap: () {
                              widget.removeMenu();
                              widget.onChange(option);
                            },
                            child: Container(
                              color: Colors.white,
                              padding: const EdgeInsets.symmetric(
                                horizontal: 12.0,
                                vertical: 8.0,
                              ),
                              width: double.infinity,
                              child: Text(option.name),
                            ),
                          );
                        }),
                      ),
                    ),
                  ),
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
