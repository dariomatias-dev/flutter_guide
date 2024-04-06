part of 'language_dropdown_widget.dart';

class DropdownButtonWidget extends StatefulWidget {
  const DropdownButtonWidget({super.key});

  @override
  State<DropdownButtonWidget> createState() => _DropdownButtonWidgetState();
}

class _DropdownButtonWidgetState extends State<DropdownButtonWidget> {
  String selectedLanguage = languages[0];

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      focusColor: Colors.transparent,
      value: selectedLanguage,
      onChanged: (value) {
        setState(() {
          selectedLanguage = value!;
        });
      },
      items: List.generate(languages.length, (index) {
        final language = languages[index];

        return DropdownMenuItem(
          value: language,
          child: Text(
            language,
            style: TextStyle(
              color: Theme.of(context).colorScheme.primary,
              fontSize: 14.0,
            ),
          ),
        );
      }),
    );
  }
}
