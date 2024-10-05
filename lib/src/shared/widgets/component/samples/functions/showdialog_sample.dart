import 'package:flutter/material.dart';

class ShowDialogSample extends StatefulWidget {
  const ShowDialogSample({super.key});

  @override
  State<ShowDialogSample> createState() => _ShowDialogSampleState();
}

class _ShowDialogSampleState extends State<ShowDialogSample> {
  void _showDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return const Dialog(
          child: Padding(
            padding: EdgeInsets.only(
              top: 20.0,
              bottom: 16.0,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  'Title',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 20.0),
                Text(
                  'Description',
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void _showSimpleDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return const SimpleDialog(
          title: Text(
            'Title',
            textAlign: TextAlign.center,
          ),
          children: <Widget>[
            SizedBox(height: 12.0),
            Text(
              'Description',
              textAlign: TextAlign.center,
            ),
          ],
        );
      },
    );
  }

  void _showAlertDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return const AlertDialog(
          title: Text(
            'Title',
            textAlign: TextAlign.center,
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              SizedBox(height: 12.0),
              Text('Description'),
            ],
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
              onPressed: _showDialog,
              child: const Text('Show Dialog'),
            ),
            const SizedBox(height: 12.0),
            ElevatedButton(
              onPressed: _showSimpleDialog,
              child: const Text('Show Simple Dialog'),
            ),
            const SizedBox(height: 12.0),
            ElevatedButton(
              onPressed: _showAlertDialog,
              child: const Text('Show Alert Dialog'),
            ),
          ],
        ),
      ),
    );
  }
}
