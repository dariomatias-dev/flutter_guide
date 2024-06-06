import 'package:flutter/material.dart';

enum Direction {
  left,
  right,
}

class EmailsSample extends StatefulWidget {
  const EmailsSample({super.key});

  @override
  State<EmailsSample> createState() => _EmailsSampleState();
}

class _EmailsSampleState extends State<EmailsSample> {
  void _showModalBottomSheet(
    Direction direction,
  ) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return const ModalBottomSheetWidget();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _showModalBottomSheet(
              Direction.left,
            );
          },
          child: const Text('Open Modal'),
        ),
      ),
    );
  }
}

class ModalBottomSheetWidget extends StatefulWidget {
  const ModalBottomSheetWidget({super.key});

  @override
  State<ModalBottomSheetWidget> createState() => _ModalBottomSheetWidgetState();
}

class _ModalBottomSheetWidgetState extends State<ModalBottomSheetWidget> {
  void _action() {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 16.0,
        right: 12.0,
        bottom: 20.0,
        left: 12.0,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            height: 4.0,
            width: 40.0,
            decoration: BoxDecoration(
              color: Colors.grey.shade800,
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
          const SizedBox(height: 24.0),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ModalBottomSheetWidgetActionWidget(
                action: _action,
                icon: Icons.share_outlined,
                text: 'Share',
              ),
              ModalBottomSheetWidgetActionWidget(
                action: _action,
                icon: Icons.add,
                text: 'Add to',
              ),
              ModalBottomSheetWidgetActionWidget(
                action: _action,
                icon: Icons.delete_outline,
                text: 'Trash',
              ),
              ModalBottomSheetWidgetActionWidget(
                action: _action,
                icon: Icons.archive_outlined,
                text: 'Move to archive',
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ModalBottomSheetWidgetActionWidget extends StatelessWidget {
  const ModalBottomSheetWidgetActionWidget({
    super.key,
    required this.icon,
    required this.text,
    required this.action,
  });

  final IconData icon;
  final String text;
  final VoidCallback action;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: action,
        child: Column(
          children: <Widget>[
            Icon(
              icon,
              size: 24.0,
            ),
            const SizedBox(height: 8.0),
            Text(
              text,
              maxLines: 2,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 12.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
