import 'package:flutter/material.dart';

class AppBarSample extends StatelessWidget {
  const AppBarSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            size: 24.0,
          ),
        ),
        title: const Text('Title'),
        actions: const <Widget>[
          Icon(Icons.notifications_none,),
        ],
      ),
    );
  }
}
