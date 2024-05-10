import 'package:flutter/material.dart';

class ActionchipSample extends StatefulWidget {
  const ActionchipSample({super.key});

  @override
  State<ActionchipSample> createState() => AactionchiSsampleState();
}

class AactionchiSsampleState extends State<ActionchipSample> {
  bool _isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ActionChip(
          onPressed: () {
            setState(() {
              _isFavorite = !_isFavorite;
            });
          },
          avatar: Icon(
            _isFavorite ? Icons.favorite : Icons.favorite_border,
          ),
          label: Text(
            _isFavorite ? 'Favorited' : 'Favorite',
          ),
        ),
      ),
    );
  }
}
