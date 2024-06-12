import 'package:flutter/material.dart';

class BottomAppBarSample extends StatelessWidget {
  const BottomAppBarSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      bottomNavigationBar: BottomAppBar(
        height: 40.0,
        color: Colors.blue,
        child: IconTheme(
          data: IconThemeData(
            color: Theme.of(context).colorScheme.surface,
          ),
          child: Row(
            children: <Widget>[
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.home,
                ),
              ),
              const SizedBox(width: 8.0),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.person,
                ),
              ),
              const SizedBox(width: 8.0),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.settings,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
