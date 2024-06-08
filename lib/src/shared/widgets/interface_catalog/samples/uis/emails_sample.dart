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
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return const EmailsScreen();
                },
              ),
            );
          },
          child: const Text('Access Screen'),
        ),
      ),
    );
  }
}

class EmailsScreen extends StatefulWidget {
  const EmailsScreen({super.key});

  @override
  State<EmailsScreen> createState() => _EmailsScreenState();
}

class EmailsNotifier extends ValueNotifier<List<EmailModel>> {
  EmailsNotifier(super.value);

  void setEmails(
    List<EmailModel> emails,
  ) {
    value = emails;

    notifyListeners();
  }
}

class _EmailsScreenState extends State<EmailsScreen> {
  late bool _isLigth;

  List<EmailModel> _emails = <EmailModel>[];

  final _emailsNotifier = EmailsNotifier([]);

  void _searchEmails(
    String query,
  ) {
    if (query.trim() == '') {
      _emailsNotifier.setEmails(_emails);
      return;
    }

    query = query.trim().toLowerCase();

    final results = <EmailModel>[];

    for (EmailModel email in _emails) {
      if (email.sender.toLowerCase().contains(query) ||
          email.subject.toLowerCase().contains(query) ||
          email.body.toLowerCase().contains(query)) {
        results.add(email);
      }
    }

    _emailsNotifier.setEmails(results);
  }

  @override
  void initState() {
    _emails = emails;
    _emailsNotifier.setEmails(_emails);

    super.initState();
  }

  @override
  void didChangeDependencies() {
    _isLigth = Theme.of(context).brightness == Brightness.light;

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).brightness == Brightness.light
          ? ThemeData.light()
          : ThemeData.dark(),
      child: Scaffold(
        drawer: Drawer(
          child: Column(
            children: <Widget>[
              Expanded(
                child: Container(),
              ),
              const Divider(),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.pop(context);
                },
                child: const Text(
                  'Back',
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
              ),
              const SizedBox(height: 12.0),
            ],
          ),
        ),
        appBar: EmailsScreenAppBarWidget(
          searchEmails: _searchEmails,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10.0,
          ),
          child: ValueListenableBuilder(
            valueListenable: _emailsNotifier,
            builder: (context, value, child) {
              return ListView.builder(
                itemCount: value.length,
                itemBuilder: (context, index) {
                  return EmailWidget(
                    email: value[index],
                  );
                },
              );
            },
          ),
        ),
        floatingActionButton: ComposeEmailFloatingActionButtonWidget(
          isLigth: _isLigth,
        ),
      ),
    );
  }
}

class EmailsScreenAppBarWidget extends StatefulWidget
    implements PreferredSizeWidget {
  const EmailsScreenAppBarWidget({
    super.key,
    required this.searchEmails,
  });

  final void Function(
    String query,
  ) searchEmails;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  State<EmailsScreenAppBarWidget> createState() =>
      _EmailsScreenAppBarWidgetState();
}

class _EmailsScreenAppBarWidgetState extends State<EmailsScreenAppBarWidget> {
  final _searchController = TextEditingController();
  final _searchFocus = FocusNode();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 12.0,
        ),
        height: 40.0,
        child: TextFormField(
          controller: _searchController,
          focusNode: _searchFocus,
          onEditingComplete: () {
            widget.searchEmails(
              _searchController.text,
            );
          },
          decoration: InputDecoration(
            prefixIcon: GestureDetector(
              onTap: () {
                Scaffold.of(context).openDrawer();
              },
              child: const Icon(
                Icons.menu,
              ),
            ),
            filled: true,
            fillColor: Theme.of(context).colorScheme.primary.withOpacity(0.1),
            contentPadding: const EdgeInsets.all(12.0),
            isDense: true,
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(24.0),
              ),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ),
    );
  }
}

class ComposeEmailFloatingActionButtonWidget extends StatelessWidget {
  const ComposeEmailFloatingActionButtonWidget({
    super.key,
    required this.isLigth,
  });

  final bool isLigth;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: () {},
      backgroundColor:
          isLigth ? Colors.lightBlue.shade50 : Colors.lightBlue.shade900,
      icon: Icon(
        Icons.edit_outlined,
        color: isLigth ? Colors.lightBlue.shade900 : Colors.lightBlue.shade100,
        size: 20.0,
      ),
      label: Text(
        'Compose',
        style: TextStyle(
          color:
              isLigth ? Colors.lightBlue.shade900 : Colors.lightBlue.shade100,
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
