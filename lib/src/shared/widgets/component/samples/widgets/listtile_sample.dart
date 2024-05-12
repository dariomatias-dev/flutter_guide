import 'package:flutter/material.dart';

class ListTileSample extends StatelessWidget {
  const ListTileSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 2,
          itemBuilder: (context, index) {
            return ListTile(
              onTap: index == 1 ? () {} : null,
              leading: const Icon(Icons.info),
              title: const Text('Title'),
              subtitle: const Text('Subtitle'),
              trailing: const Icon(Icons.arrow_right),
            );
          },
        ),
      ),
    );
  }
}
