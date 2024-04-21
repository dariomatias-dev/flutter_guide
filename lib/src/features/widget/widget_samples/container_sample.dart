import 'package:flutter/material.dart';

class ContainerSample extends StatelessWidget {
  const ContainerSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 160.0,
          height: 160.0,
          color: Colors.blue,
        ),
      ),
    );
  }
}
