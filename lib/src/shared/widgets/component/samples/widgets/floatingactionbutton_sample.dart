import 'package:flutter/material.dart';

enum FloatingActionButtonType {
  extended,
  large,
  small,
  standard,
}

const floatingActionButtonTypes = [
  FloatingActionButtonType.standard,
  FloatingActionButtonType.extended,
  FloatingActionButtonType.large,
  FloatingActionButtonType.small,
];

const screenNames = [
  'Standard',
  'Extended',
  'Large',
  'Small',
];

class FloatingActionButtonSample extends StatelessWidget {
  const FloatingActionButtonSample({super.key});

  void onPressed(
    BuildContext context,
    FloatingActionButtonType floatingActionButtonType,
  ) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return FloatingActionButtonScreen(
            floatingActionButtonType: floatingActionButtonType,
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            floatingActionButtonTypes.length * 2 - 1,
            (index) {
              if (index % 2 == 1) {
                return const SizedBox(height: 12.0);
              }

              return ElevatedButton(
                onPressed: () => onPressed(
                  context,
                  floatingActionButtonTypes[index ~/ 2],
                ),
                child: Text(
                  screenNames[index ~/ 2],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class FloatingActionButtonScreen extends StatelessWidget {
  const FloatingActionButtonScreen({
    super.key,
    required this.floatingActionButtonType,
  });

  final FloatingActionButtonType floatingActionButtonType;

  Widget getFloatingActionButton() {
    switch (floatingActionButtonType) {
      case FloatingActionButtonType.extended:
        return FloatingActionButton.extended(
          icon: const Icon(Icons.add),
          label: const Text('Add'),
          onPressed: () {},
        );
      case FloatingActionButtonType.large:
        return FloatingActionButton.large(
          onPressed: () {},
          child: const Icon(Icons.add),
        );
      case FloatingActionButtonType.small:
        return FloatingActionButton.small(
          onPressed: () {},
          child: const Icon(Icons.add),
        );
      default:
        return FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    final floatingActionButton = getFloatingActionButton();

    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            size: 20.0,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: List.generate(20, (index) {
            return ListTile(
              title: Text('Title ${index + 1}'),
            );
          }),
        ),
      ),
      floatingActionButton: floatingActionButton,
    );
  }
}
