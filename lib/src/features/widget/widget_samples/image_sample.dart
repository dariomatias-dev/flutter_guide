import 'package:flutter/material.dart';

class ImageSample extends StatelessWidget {
  const ImageSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          'assets/images/flutter_image.png',
        ),
      ),
    );
  }
}
