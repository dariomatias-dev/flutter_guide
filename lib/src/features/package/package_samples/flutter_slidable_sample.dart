import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class FlutterSlidableSample extends StatelessWidget {
  const FlutterSlidableSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Slidable(
          startActionPane: ActionPane(
            motion: const ScrollMotion(),
            children: [
              SlidableAction(
                onPressed: (context) {},
                backgroundColor: Colors.blue,
                icon: Icons.edit,
              ),
              SlidableAction(
                onPressed: (context) {},
                backgroundColor: Colors.red,
                icon: Icons.delete,
              ),
            ],
          ),
          child: const ListTile(
            title: Text('Flutter Slidable'),
          ),
        ),
      ),
    );
  }
}
