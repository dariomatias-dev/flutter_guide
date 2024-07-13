import 'package:flutter/cupertino.dart';

class CupertinoListTileSample extends StatelessWidget {
  const CupertinoListTileSample({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const CupertinoListTile(
              leading: Icon(
                CupertinoIcons.info,
              ),
              title: Text('Title'),
              subtitle: Text('Subtitle'),
              trailing: Icon(
                CupertinoIcons.arrow_right,
              ),
            ),
            const SizedBox(height: 12.0),
            CupertinoListTile(
              onTap: () {},
              leading: const Icon(
                CupertinoIcons.info,
              ),
              title: const Text('Title'),
              subtitle: const Text('Subtitle'),
              trailing: const Icon(
                CupertinoIcons.arrow_right,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
