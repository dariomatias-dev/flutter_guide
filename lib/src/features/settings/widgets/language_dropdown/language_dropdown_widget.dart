import 'package:flutter/material.dart';

part 'dropdown_button_widget.dart';

const languages = [
  'English',
  'Português',
];

class LanguageDropdownWidget extends StatelessWidget {
  const LanguageDropdownWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
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
          trailing: const DropdownButtonHideUnderline(
            child: DropdownButtonWidget(),
          ),
        ),
      ),
    );
  }
}
