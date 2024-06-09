import 'package:flutter/material.dart';
import 'package:validatorless/validatorless.dart';

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
        'Hello team, We need to discuss the plans for re-opening the town. Please find attached the agenda for our upcoming meeting. Regards, Rika',
    date: DateTime.now(),
  ),
  EmailModel(
    sender: 'Julius',
    subject: 'Updates on upcoming event',
    body:
        'Hi everyone, Just a quick update on the event. We have confirmed the venue and finalized the guest list. More details to follow soon. Best, Julius',
    date: DateTime(2024, 2, 19),
  ),
  EmailModel(
    sender: 'Fred',
    subject: 'Meeting agenda for next week',
    body:
        'Dear team, Please find attached the agenda for our meeting next week. Kindly review it beforehand. Regards, Fred',
    date: DateTime(2024, 3, 12),
  ),
  EmailModel(
    sender: 'Rein',
    subject: 'Request for information',
    body:
        'Hello, I hope this email finds you well. Could you please provide me with the latest sales report? Thanks, Rein',
    date: DateTime(2024, 3, 24),
  ),
  EmailModel(
    sender: 'Toren',
    subject: 'Reminder: Deadline approaching',
    body:
        'Hi there, Just a friendly reminder that the deadline for project submissions is approaching. Make sure to submit your work on time. Regards, Toren',
    date: DateTime(2024, 5, 1),
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

class ComposeEmailFloatingActionButtonWidget extends StatefulWidget {
  const ComposeEmailFloatingActionButtonWidget({
    super.key,
    required this.isLigth,
  });

  final bool isLigth;

  @override
  State<ComposeEmailFloatingActionButtonWidget> createState() =>
      _ComposeEmailFloatingActionButtonWidgetState();
}

class _ComposeEmailFloatingActionButtonWidgetState
    extends State<ComposeEmailFloatingActionButtonWidget> {
  InputDecoration _defaultInputDecoration({
    String? hinText,
  }) {
    return InputDecoration(
      contentPadding: _defaultPadding,
      border: InputBorder.none,
      isDense: true,
      hintText: hinText,
      hintStyle: _defaultTitleFieldTextStyle,
    );
  }

  TextStyle get _defaultTitleFieldTextStyle => TextStyle(
        color: Theme.of(context).colorScheme.secondary,
        fontSize: 14.0,
        fontWeight: FontWeight.w500,
      );

  EdgeInsets get _defaultPadding => const EdgeInsets.symmetric(
        horizontal: 12.0,
      );

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: () {
        showDialog(
          context: context,
          useSafeArea: false,
          builder: (context) {
            return CreateEmailWidget(
              titleFieldTextStyle: _defaultTitleFieldTextStyle,
              inputDecoration: _defaultInputDecoration,
              padding: _defaultPadding,
            );
          },
        );
      },
      backgroundColor:
          widget.isLigth ? Colors.lightBlue.shade50 : Colors.lightBlue.shade900,
      icon: Icon(
        Icons.edit_outlined,
        color: widget.isLigth
            ? Colors.lightBlue.shade900
            : Colors.lightBlue.shade100,
        size: 20.0,
      ),
      label: Text(
        'Compose',
        style: TextStyle(
          color: widget.isLigth
              ? Colors.lightBlue.shade900
              : Colors.lightBlue.shade100,
        ),
      ),
    );
  }
}

class CreateEmailWidget extends StatefulWidget {
  const CreateEmailWidget({
    super.key,
    required this.titleFieldTextStyle,
    required this.inputDecoration,
    required this.padding,
  });

  final TextStyle titleFieldTextStyle;
  final InputDecoration Function({
    String? hinText,
  }) inputDecoration;
  final EdgeInsets padding;

  @override
  State<CreateEmailWidget> createState() => _CreateEmailWidgetState();
}

class _CreateEmailWidgetState extends State<CreateEmailWidget> {
  final _formKey = GlobalKey<FormState>();

  final _senderController = TextEditingController();
  final _toController = TextEditingController();
  final _subjectController = TextEditingController();
  final _bodyController = TextEditingController();

  void _submitForm() {
    if (_formKey.currentState!.validate()) {}
  }

  @override
  void dispose() {
    _toController.dispose();
    _subjectController.dispose();
    _bodyController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog.fullscreen(
      child: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding: widget.padding,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          width: 24.0,
                          height: 24.0,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.close,
                              size: 20.0,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 20.0),
                      const Text(
                        'Compose an Email',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: _submitForm,
                    child: Container(
                      width: 24.0,
                      height: 24.0,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.send_outlined,
                          size: 18.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12.0),
            Expanded(
              child: Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    CreateEmailTextFieldWidget(
                      controller: _senderController,
                      autoFocus: true,
                      titleFieldTextStyle: widget.titleFieldTextStyle,
                      inputDecoration: widget.inputDecoration(),
                      text: 'De',
                      validator: Validatorless.multiple([
                        Validatorless.required('Required field'),
                        Validatorless.min(10, 'Minimum 10 characters'),
                        Validatorless.max(30, 'Maximum 30 characters'),
                      ]),
                    ),
                    const CreateEmailDividirWidget(),
                    CreateEmailTextFieldWidget(
                      controller: _toController,
                      titleFieldTextStyle: widget.titleFieldTextStyle,
                      inputDecoration: widget.inputDecoration(),
                      text: 'Para',
                      validator: Validatorless.multiple([
                        Validatorless.required('Required field'),
                        Validatorless.min(10, 'Minimum 10 characters'),
                        Validatorless.max(30, 'Maximum 30 characters'),
                      ]),
                    ),
                    const CreateEmailDividirWidget(),
                    TextFormField(
                      controller: _subjectController,
                      decoration: widget.inputDecoration(
                        hinText: 'Subject',
                      ),
                      validator: Validatorless.multiple([
                        Validatorless.required('Required field'),
                        Validatorless.min(10, 'Minimum 10 characters'),
                        Validatorless.max(50, 'Maximum 50 characters'),
                      ]),
                    ),
                    const CreateEmailDividirWidget(),
                    Expanded(
                      child: TextFormField(
                        controller: _bodyController,
                        maxLines: null,
                        decoration: widget.inputDecoration(
                          hinText: 'Write Email',
                        ),
                        validator: Validatorless.multiple([
                          Validatorless.required('Required field'),
                          Validatorless.min(10, 'Minimum 10 characters'),
                          Validatorless.max(200, 'Maximum 200 characters'),
                        ]),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CreateEmailTextFieldWidget extends StatelessWidget {
  const CreateEmailTextFieldWidget({
    super.key,
    required this.controller,
    this.autoFocus = false,
    required this.titleFieldTextStyle,
    required this.inputDecoration,
    required this.text,
    required this.validator,
  });

  final TextEditingController controller;
  final bool autoFocus;
  final TextStyle titleFieldTextStyle;
  final InputDecoration inputDecoration;
  final String text;
  final String? Function(
    String? value,
  )? validator;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 12.0,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            text,
            style: titleFieldTextStyle,
          ),
          Expanded(
            child: TextFormField(
              controller: controller,
              autofocus: autoFocus,
              decoration: inputDecoration,
              validator: validator,
            ),
          ),
        ],
      ),
    );
  }
}

class CreateEmailDividirWidget extends StatelessWidget {
  const CreateEmailDividirWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        vertical: 2.0,
      ),
      child: Divider(),
    );
  }
}

final months = <String>[
  'Jan',
  'Feb',
  'Mar',
  'Apr',
  'May',
  'Jun',
  'Jul',
  'Aug',
  'Sep',
  'Oct',
  'Nov',
  'Dec',
];

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
  late String date;

  void _showModalBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return const ModalBottomSheetWidget();
      },
    );
  }

  @override
  void initState() {
    final emailDate = widget.email.date;

    final elapsedTime = DateTime.now().difference(
      emailDate,
    );

    if (elapsedTime.inDays == 0) {
      date = '${emailDate.hour}:${emailDate.minute}';
    } else {
      date = '${months[emailDate.month - 1]} ${emailDate.day}';
    }

    super.initState();
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
                        date,
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
