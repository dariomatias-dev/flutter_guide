import 'package:flutter/material.dart';

import 'package:flutter_guide/src/features/settings/widgets/select_language/select_language_controller.dart';

class SelectLanguageWidget extends StatefulWidget {
  const SelectLanguageWidget({super.key});

  @override
  State<SelectLanguageWidget> createState() => _SelectLanguageWidgetState();
}

class _SelectLanguageWidgetState extends State<SelectLanguageWidget> {
  final _controller = SelectLanguageController();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        _controller.showLanguageMenu(context, () {
          setState(() {});
        });
      },
      overlayColor: MaterialStatePropertyAll(
        Colors.blue.withOpacity(0.05),
      ),
      hoverColor: Colors.blue.withOpacity(0.05),
      child: Ink(
        child: ListTile(
          leading: Icon(
            Icons.language,
            color: Theme.of(context).colorScheme.primary,
            size: 20.0,
          ),
          title: const Text(
            'Language',
            style: TextStyle(
              fontSize: 14.0,
            ),
          ),
          trailing: ValueListenableBuilder(
            valueListenable: _controller.selectedLanguageNotifier,
            builder: (context, value, child) {
              return Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    value,
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                      fontSize: 14.0,
                    ),
                  ),
                  Icon(
                    Icons.arrow_drop_down,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
