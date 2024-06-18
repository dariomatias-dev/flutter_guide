import 'package:flutter/cupertino.dart';

class CupertinoNavigationBarSample extends StatelessWidget {
  const CupertinoNavigationBarSample({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Title'),
        trailing: Icon(
          CupertinoIcons.bell,
          size: 24.0,
        ),
      ),
      child: Container(),
    );
  }
}
