import 'package:flutter/material.dart';

class DismissibleSample extends StatelessWidget {
  const DismissibleSample({super.key});

  ListTile get _listTile => const ListTile(
        title: Text('Title'),
        subtitle: Text('Subtitle'),
        trailing: Icon(Icons.swap_horiz),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Dismissible(
            key: GlobalKey(),
            onDismissed: (direction) {},
            background: Container(
              color: Colors.red,
            ),
            child: _listTile,
          ),
          Dismissible(
            key: GlobalKey(),
            onDismissed: (direction) {},
            background: Container(
              color: Colors.red,
            ),
            secondaryBackground: Container(
              color: Colors.blue,
            ),
            child: _listTile,
          ),
        ],
      ),
    );
  }
}
