import 'package:flutter/cupertino.dart';

class CupertinoActivityIndicatorSample extends StatelessWidget {
  const CupertinoActivityIndicatorSample({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoPageScaffold(
      child: Center(
        child: CupertinoActivityIndicator(),
      ),
    );
  }
}
