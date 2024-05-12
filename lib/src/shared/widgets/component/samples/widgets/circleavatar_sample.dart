import 'package:flutter/material.dart';

class CircleAvatarSample extends StatelessWidget {
  const CircleAvatarSample({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircleAvatar(
          child: Icon(
            Icons.person,
          ),
        ),
      ),
    );
  }
}
