import 'package:flutter/material.dart';

class DialogSample extends StatefulWidget {
  const DialogSample({super.key});

  @override
  State<DialogSample> createState() => _DialogSampleState();
}

class _DialogSampleState extends State<DialogSample> {
  void _showBasicDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          child: Padding(
            padding: const EdgeInsets.all(28.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Text(
                  'Title',
                  style: TextStyle(
                    fontSize: 24.0,
                  ),
                ),
                const SizedBox(height: 12.0),
                const Text('Description'),
                const SizedBox(height: 4.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Ok'),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Cancel'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: _showBasicDialog,
              child: const Text('Basic Dialog'),
            ),
          ],
        ),
      ),
    );
  }
}
