import 'package:flutter/material.dart';

class IconButtonSample extends StatelessWidget {
  const IconButtonSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.favorite,
          ),
        ),
      ),
    );
  }
}
