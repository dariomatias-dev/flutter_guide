import 'package:flutter/material.dart';

import 'package:flutter_guide/src/features/main/screens/settings/widgets/select_language/select_language_controller.dart';

import 'package:flutter_guide/src/shared/widgets/list_tile_item_widget.dart';

class SelectLanguageWidget extends StatefulWidget {
  const SelectLanguageWidget({super.key});

  @override
  State<SelectLanguageWidget> createState() => _SelectLanguageWidgetState();
}

class _SelectLanguageWidgetState extends State<SelectLanguageWidget> {
  late SelectLanguageController _controller;

  @override
  void didChangeDependencies() {
    _controller = SelectLanguageController(
      context: context,
    );

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return ListTileItemWidget(
      onTap: () {
        _controller.showLanguageMenu(context, () {
          setState(() {});
        });
      },
      icon: Icons.language,
      title: 'Language',
      // trailingWidgets: <Widget>[
      //   ValueListenableBuilder(
      //     valueListenable: _controller.selectedLanguageNotifier,
      //     builder: (context, value, child) {
      //       return Row(
      //         mainAxisSize: MainAxisSize.min,
      //         children: <Widget>[
      //           Text(
      //             value.name,
      //             style: TextStyle(
      //               color: Theme.of(context).colorScheme.primary,
      //               fontSize: 14.0,
      //             ),
      //           ),
      //           Icon(
      //             Icons.arrow_drop_down,
      //             color: Theme.of(context).colorScheme.primary,
      //           ),
      //         ],
      //       );
      //     },
      //   ),
      // ],
    );
  }
}
