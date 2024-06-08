import 'package:flutter/material.dart';

enum Direction {
  left,
  right,
}

class EmailModel {
  const EmailModel({
    required this.sender,
    required this.subject,
    required this.body,
    required this.date,
  });

  final String sender;
  final String subject;
  final String body;
  final DateTime date;
}

final emails = <EmailModel>[
  EmailModel(
    sender: 'Rika',
    subject: 'Plans for re-opening the town',
    body:
        'Lorem ipsum, vb fvrts gtrhrd bgfrx szx nxr dhcttx ujfcujutu 6uuftj7cv',
    date: DateTime.now(),
  ),
  EmailModel(
    sender: 'Julius',
    subject: 'Plans for re-opening the town',
    body:
        'Lorem ipsum, vb fvrts gtrhrd bgfrx szx nxr dhcttx ujfcujutu 6uuftj7cv',
    date: DateTime.now(),
  ),
  EmailModel(
    sender: 'Fred',
    subject: 'Plans for re-opening the town',
    body:
        'Lorem ipsum, vb fvrts gtrhrd bgfrx szx nxr dhcttx ujfcujutu 6uuftj7cv',
    date: DateTime.now(),
  ),
  EmailModel(
    sender: 'Rein',
    subject: 'Plans for re-opening the town',
    body:
        'Lorem ipsum, vb fvrts gtrhrd bgfrx szx nxr dhcttx ujfcujutu 6uuftj7cv',
    date: DateTime.now(),
  ),
  EmailModel(
    sender: 'Toren',
    subject: 'Plans for re-opening the town',
    body:
        'Lorem ipsum, vb fvrts gtrhrd bgfrx szx nxr dhcttx ujfcujutu 6uuftj7cv',
    date: DateTime.now(),
  ),
];

class EmailsSample extends StatelessWidget {
  const EmailsSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10.0,
        ),
        child: ListView.builder(
          itemCount: emails.length,
          itemBuilder: (context, index) {
            return EmailWidget(
              email: emails[index],
            );
          },
        ),
      ),
    );
  }
}

class EmailWidget extends StatefulWidget {
  const EmailWidget({
    super.key,
    required this.email,
  });

  final EmailModel email;

  @override
  State<EmailWidget> createState() => _EmailWidgetState();
}

class _EmailWidgetState extends State<EmailWidget> {
  void _showModalBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return const ModalBottomSheetWidget();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: _showModalBottomSheet,
      child: Container(
        color: Theme.of(context).colorScheme.background,
        padding: const EdgeInsets.symmetric(
          vertical: 8.0,
        ),
        child: Row(
          children: <Widget>[
            CircleAvatar(
              backgroundColor: Colors.blue.shade100,
              child: Icon(
                Icons.person,
                color: Colors.blue.shade400,
                size: 32.0,
              ),
            ),
            const SizedBox(width: 14.0),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          widget.email.sender,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      const SizedBox(width: 12.0),
                      Text(
                        '8:34 AM',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.secondary,
                          fontSize: 12.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          widget.email.subject,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          widget.email.body,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Theme.of(context)
                                .colorScheme
                                .secondary
                                .withOpacity(0.5),
                            fontSize: 12.0,
                          ),
                        ),
                      ),
                      const SizedBox(width: 12.0),
                      const SaveEmailButtonWidget(),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SaveEmailButtonWidget extends StatefulWidget {
  const SaveEmailButtonWidget({super.key});

  @override
  State<SaveEmailButtonWidget> createState() => _SaveEmailButtonWidgetState();
}

class _SaveEmailButtonWidgetState extends State<SaveEmailButtonWidget> {
  bool _isSave = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isSave = !_isSave;
        });
      },
      child: Icon(
        _isSave ? Icons.star : Icons.star_border,
        size: 20.0,
        color: _isSave
            ? Colors.yellow.shade600
            : Theme.of(context).colorScheme.secondary.withOpacity(0.5),
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
