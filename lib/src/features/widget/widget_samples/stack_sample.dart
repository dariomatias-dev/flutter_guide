import 'package:flutter/material.dart';

class StackSample extends StatelessWidget {
  const StackSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: 250.0,
              height: 250.0,
              color: Colors.red,
            ),
            Container(
              width: 200.0,
              height: 200.0,
              color: Colors.yellow,
            ),
            Container(
              width: 150.0,
              height: 150.0,
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
