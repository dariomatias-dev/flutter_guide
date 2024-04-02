import 'package:flutter/material.dart';

class ListTileSample extends StatelessWidget {
  const ListTileSample({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: ListTile(
          leading: Icon(Icons.info),
          title: Text('Title'),
          subtitle: Text('Subtitle'),
          trailing: Icon(Icons.arrow_right),
        ),
      ),
    );
  }
}
