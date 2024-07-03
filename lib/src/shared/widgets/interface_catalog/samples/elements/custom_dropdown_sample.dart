import 'package:flutter/material.dart';

const daysOfWeek = <String>[
  'Monday',
  'Tuesday',
  'Wednesday',
  'Thursday',
  'Friday',
];

const monthsOfYear = <String>[
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

const worldCities = <String>[
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

class CustomDropdownSample extends StatelessWidget {
  const CustomDropdownSample({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 12.0,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              DropdownButtonWidget(
                title: 'Days of the Week',
                options: daysOfWeek,
              ),
              SizedBox(height: 16.0),
              DropdownButtonWidget(
                title: 'Months of the Year',
                options: monthsOfYear,
              ),
              SizedBox(height: 16.0),
              DropdownButtonWidget(
                title: 'Cities of the World',
                options: worldCities,
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
  });

  final String title;
  final List<String> options;

  @override
  State<DropdownButtonWidget> createState() => _DropdownButtonWidgetState();
}

class _DropdownButtonWidgetState extends State<DropdownButtonWidget> {
  final _dropdownButtonKey = GlobalKey();

  OverlayEntry? _overlayEntry;
  bool _isOpen = false;
  String? _selectedValue;

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
              _selectedValue ?? widget.title,
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

class MenuWidget extends StatelessWidget {
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
  final List<String> options;
  final void Function(
    String value,
  ) onChange;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: removeMenu,
      child: Material(
        color: Colors.transparent,
        child: Padding(
          padding: EdgeInsets.only(
            top: topPadding,
            right: 12.0,
            left: 12.0,
          ),
          child: Column(
            children: <Widget>[
              ConstrainedBox(
                constraints: BoxConstraints(
                  maxHeight:
                      MediaQuery.sizeOf(context).height - topPadding - 40.0,
                ),
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 6.0,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: borderRadius,
                    boxShadow: <BoxShadow>[
                      boxShadow,
                    ],
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: List.generate(options.length, (index) {
                        final option = options[index];

                        return GestureDetector(
                          onTap: () {
                            removeMenu();
                            onChange(option);
                          },
                          child: Container(
                            color: Colors.white,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 12.0,
                              vertical: 8.0,
                            ),
                            width: double.infinity,
                            child: Text(option),
                          ),
                        );
                      }),
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
