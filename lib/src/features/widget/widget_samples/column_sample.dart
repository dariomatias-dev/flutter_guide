import 'package:flutter/material.dart';

class ColumnSample extends StatelessWidget {
  const ColumnSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
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
