import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

const actions = [
  SlidableActionTemplate(
    backgroundColor: Colors.blue,
    icon: Icons.edit,
  ),
  SlidableActionTemplate(
    backgroundColor: Colors.red,
    icon: Icons.delete,
  ),
];

class FlutterSlidableSample extends StatelessWidget {
  const FlutterSlidableSample({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 12.0,
        ),
        child: Column(
          children: <Widget>[
            FlutterSlidableTemplate(
              title: 'Flutter Slidable Motion: Scroll',
              startActions: actions,
            ),
            FlutterSlidableDividir(),
            FlutterSlidableTemplate(
              title: 'Flutter Slidable Motion: Drawer',
              motion: DrawerMotion(),
              startActions: actions,
            ),
            FlutterSlidableDividir(),
            FlutterSlidableTemplate(
              title: 'Flutter Slidable Motion: Stretch',
              motion: StretchMotion(),
              startActions: actions,
            ),
            FlutterSlidableDividir(),
            FlutterSlidableTemplate(
              title: 'Flutter Slidable With End Actions',
              endActions: actions,
            ),
            FlutterSlidableDividir(),
            FlutterSlidableTemplate(
              title: 'Flutter Slidable With Start e End Actions',
              startActions: actions,
              endActions: actions,
            ),
          ],
        ),
      ),
    );
  }
}

class FlutterSlidableTemplate extends StatelessWidget {
  const FlutterSlidableTemplate({
    super.key,
    required this.title,
    this.motion,
    this.startActions,
    this.endActions,
  });

  final String title;
  final Widget? motion;
  final List<SlidableActionTemplate>? startActions;
  final List<SlidableActionTemplate>? endActions;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          title,
          style: const TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 12.0),
        Slidable(
          startActionPane: startActions != null
              ? ActionPane(
                  motion: motion ?? const ScrollMotion(),
                  children: startActions!,
                )
              : null,
          endActionPane: endActions != null
              ? ActionPane(
                  motion: motion ?? const ScrollMotion(),
                  children: endActions!,
                )
              : null,
          child: const ListTile(
            title: Text('Flutter Slidable'),
          ),
        ),
      ],
    );
  }
}

class SlidableActionTemplate extends StatelessWidget {
  const SlidableActionTemplate({
    super.key,
    required this.backgroundColor,
    required this.icon,
  });

  final Color backgroundColor;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return SlidableAction(
      onPressed: (context) {},
      backgroundColor: backgroundColor,
      icon: icon,
    );
  }
}

class FlutterSlidableDividir extends StatelessWidget {
  const FlutterSlidableDividir({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 8.0,
      ),
      child: Divider(
        color: Colors.grey.shade200,
      ),
    );
  }
}
