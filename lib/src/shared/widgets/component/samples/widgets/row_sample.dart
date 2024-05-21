import 'package:flutter/material.dart';

const colors = <Color>[
  Colors.blue,
  Colors.yellow,
  Colors.red,
];

final rowItems = List.generate(colors.length, (index) {
  return Container(
    width: 50.0,
    height: 50.0,
    color: colors[index],
  );
});

/// MainAxisAlignment
class MainAxisAlignmentModel {
  const MainAxisAlignmentModel({
    required this.name,
    required this.mainAxisAlignment,
  });

  final String name;
  final MainAxisAlignment mainAxisAlignment;
}

const mainAxisAlignments = <MainAxisAlignmentModel>[
  MainAxisAlignmentModel(
    name: 'Center',
    mainAxisAlignment: MainAxisAlignment.center,
  ),
  MainAxisAlignmentModel(
    name: 'End',
    mainAxisAlignment: MainAxisAlignment.end,
  ),
  MainAxisAlignmentModel(
    name: 'SpaceAround',
    mainAxisAlignment: MainAxisAlignment.spaceAround,
  ),
  MainAxisAlignmentModel(
    name: 'SpaceBetween',
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
  ),
  MainAxisAlignmentModel(
    name: 'SpaceEvenly',
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  ),
  MainAxisAlignmentModel(
    name: 'Start',
    mainAxisAlignment: MainAxisAlignment.start,
  ),
];

final mainAxisAlignmentItems = List.generate(
  mainAxisAlignments.length,
  (index) {
    final mainAxisAlignment = mainAxisAlignments[index];

    return DropdownMenuItem(
      value: mainAxisAlignment.mainAxisAlignment,
      child: Text(
        mainAxisAlignment.name,
      ),
    );
  },
);

/// MainAxisSize
class MainAxisSizeModel {
  const MainAxisSizeModel({
    required this.name,
    required this.mainAxisSize,
  });

  final String name;
  final MainAxisSize mainAxisSize;
}

const mainAxisSizes = <MainAxisSizeModel>[
  MainAxisSizeModel(
    name: 'Max',
    mainAxisSize: MainAxisSize.max,
  ),
  MainAxisSizeModel(
    name: 'Min',
    mainAxisSize: MainAxisSize.min,
  ),
];

final mainAxisSizeItems = List.generate(
  mainAxisSizes.length,
  (index) {
    final mainAxisSize = mainAxisSizes[index];

    return DropdownMenuItem(
      value: mainAxisSize.mainAxisSize,
      child: Text(
        mainAxisSize.name,
      ),
    );
  },
);

class RowSample extends StatefulWidget {
  const RowSample({super.key});

  @override
  State<RowSample> createState() => _RowSampleState();
}

class _RowSampleState extends State<RowSample> {
  MainAxisAlignment _mainAxisAlignment = MainAxisAlignment.center;
  MainAxisSize _mainAxisSize = MainAxisSize.max;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: _mainAxisAlignment,
            mainAxisSize: _mainAxisSize,
            children: rowItems,
          ),
        ],
      ),
      bottomNavigationBar: SizedBox(
        height: 180.0,
        child: Column(
          children: <Widget>[
            const Divider(),
            const Text('MainAxisAlignment'),
            DropdownButton<MainAxisAlignment>(
              value: _mainAxisAlignment,
              items: mainAxisAlignmentItems,
              onChanged: (value) {
                setState(() {
                  _mainAxisAlignment = value!;
                });
              },
            ),
            const SizedBox(height: 20.0),
            const Text('MainAxisSize'),
            DropdownButton<MainAxisSize>(
              value: _mainAxisSize,
              items: mainAxisSizeItems,
              onChanged: (value) {
                setState(() {
                  _mainAxisSize = value!;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
