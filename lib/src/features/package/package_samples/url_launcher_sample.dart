import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlLauncherSample extends StatefulWidget {
  const UrlLauncherSample({super.key});

  @override
  State<UrlLauncherSample> createState() => _UrlLauncherSampleState();
}

const standardUrl = 'https://pub.dev/';

class _UrlLauncherSampleState extends State<UrlLauncherSample> {
  final _urlController = TextEditingController();
  late String _url;

  BuildContext _getContext() => context;

  Future<void> _openURL() async {
    if (_urlController.text.trim() == '') {
      _url = standardUrl;
    } else {
      _url = _urlController.text;
    }

    if (!_url.startsWith('https://') || !await launchUrl(Uri.parse(_url))) {
      showDialog(
        context: _getContext(),
        builder: (context) {
          return AlertDialog(
            title: const Text('Error'),
            content: Text('Unable to open the link: $_url'),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Ok'),
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 8.0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextFormField(
              controller: _urlController,
              decoration: InputDecoration(
                hintText: standardUrl,
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey.shade400,
                  ),
                ),
                filled: true,
              ),
            ),
            const SizedBox(height: 12.0),
            ElevatedButton(
              onPressed: _openURL,
              child: const Text(
                'Open',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
