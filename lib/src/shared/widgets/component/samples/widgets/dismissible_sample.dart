import 'package:flutter/material.dart';

class DismissibleSample extends StatelessWidget {
  const DismissibleSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Dismissible(
          key: GlobalKey(),
          onDismissed: (direction) {},
          background: Container(
            color: Colors.red,
          ),
          child: const ListTile(
            title: Text('Title'),
            subtitle: Text('Subtitle'),
          ),
        ),
      ),
    );
  }
}
