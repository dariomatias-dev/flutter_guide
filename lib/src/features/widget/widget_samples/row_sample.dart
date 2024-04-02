import 'package:flutter/material.dart';

class RowSample extends StatelessWidget {
  const RowSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 50.0,
              height: 50.0,
              color: Colors.blue,
            ),
            Container(
              width: 50.0,
              height: 50.0,
              color: Colors.yellow,
            ),
            Container(
              width: 50.0,
              height: 50.0,
              color: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
