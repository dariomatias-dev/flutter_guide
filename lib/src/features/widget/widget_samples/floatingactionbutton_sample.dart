import 'package:flutter/material.dart';

class FloatingActionButtonSample extends StatelessWidget {
  const FloatingActionButtonSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const FloatingActionButtonDefault();
                    },
                  ),
                );
              },
              child: const Text('Default'),
            ),
          ],
        ),
      ),
    );
  }
}

class FloatingActionButtonDefault extends StatelessWidget {
  const FloatingActionButtonDefault({super.key});

  @override
  Widget build(BuildContext context) {
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
