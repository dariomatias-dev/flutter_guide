import 'package:flutter/material.dart';

import 'package:flutter_guide/src/shared/widgets/card_widget.dart';

class WidgetsScreen extends StatelessWidget {
  const WidgetsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 20.0),
          Container(
            height: 52.0,
            padding: const EdgeInsets.symmetric(
              horizontal: 12.0,
            ),
            child: TextFormField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey.shade200,
                prefixIcon: const Icon(
                  Icons.search,
                ),
                hintText: "Widget...",
                hintStyle: TextStyle(
                  color: Colors.grey.shade600,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          const SizedBox(height: 8.0),
          ...List.generate(10, (index) {
            return const CardWidget(
              title: 'Widget',
            );
          })
        ],
      ),
    );
  }
}
