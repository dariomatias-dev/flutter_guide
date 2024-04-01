import 'package:flutter/material.dart';

import 'package:flutter_guide/src/shared/widgets/change_theme_button_widget/change_theme_button_widget.dart';

class WidgetScreen extends StatelessWidget {
  const WidgetScreen({
    super.key,
    required this.name,
  });

  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.arrow_back_ios_new,
              color: Theme.of(context).colorScheme.tertiary,
            ),
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.secondary,
        title: Text(
          name,
          style: const TextStyle(
            fontSize: 16.0,
          ),
        ),
        actions: [
          const ChangeThemeButtonWidget(),
          const SizedBox(width: 4.0),
          PopupMenuButton(
            iconColor: Theme.of(context).colorScheme.tertiary,
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  onTap: () {},
                  child: const Text('Save'),
                ),
                PopupMenuItem(
                  onTap: () {},
                  child: const Text('Doc'),
                ),
              ];
            },
          ),
        ],
      ),
      body: const Column(
        children: [],
      ),
    );
  }
}
