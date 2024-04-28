import 'package:flutter/material.dart';

class SingleChildScrollViewSample extends StatelessWidget {
  const SingleChildScrollViewSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: List.generate(100, (index) {
            return ListTile(
              title: Text('Item ${index + 1}'),
            );
          }),
        ),
      ),
    );
  }
}
