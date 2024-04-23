import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class FlutterRatingBarSample extends StatelessWidget {
  const FlutterRatingBarSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RatingBar.builder(
          initialRating: 0.0,
          itemCount: 5,
          itemPadding: const EdgeInsets.symmetric(
            horizontal: 4.0,
          ),
          allowHalfRating: true,
          itemBuilder: (context, index) {
            return const Icon(
              Icons.star,
              color: Colors.amber,
            );
          },
          onRatingUpdate: (value) {},
        ),
      ),
    );
  }
}
