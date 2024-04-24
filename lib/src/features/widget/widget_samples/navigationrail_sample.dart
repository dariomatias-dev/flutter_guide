import 'package:flutter/material.dart';

class NavigationRailSample extends StatefulWidget {
  const NavigationRailSample({super.key});

  @override
  State<NavigationRailSample> createState() => _NavigationRailSampleState();
}

class _NavigationRailSampleState extends State<NavigationRailSample> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: <Widget>[
          NavigationRail(
            selectedIndex: _selectedIndex,
            onDestinationSelected: (value) {
              setState(() {
                _selectedIndex = value;
              });
            },
            destinations: const <NavigationRailDestination>[
              NavigationRailDestination(
                icon: Icon(Icons.home),
                label: Text('Home'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.person),
                label: Text('Profile'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.settings),
                label: Text('Settings'),
              ),
            ],
          ),
          const VerticalDivider(
            thickness: 1.0,
            width: 1.0,
          ),
          Expanded(
            child: Center(
              child: Text(
                _selectedIndex.toString(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
