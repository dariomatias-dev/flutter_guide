import 'package:flutter/material.dart';

import 'package:flutter_guide/src/shared/widgets/component_sample/widgets/code_tab/code_tab_controller.dart';

class CodeTab extends StatefulWidget {
  const CodeTab({super.key});

  @override
  State<CodeTab> createState() => _CodeTabState();
}

class _CodeTabState extends State<CodeTab> {
  late CodeTabController _controller;

  @override
  void didChangeDependencies() {
    _controller = CodeTabController(
      context: context,
      setStateCallback: () {
        setState(() {});
      },
    );

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    _controller.code;

    return Theme(
      data: Theme.of(context).copyWith(
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedItemColor: Colors.white,
        ),
      ),
      child: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(
          scrollbars: false,
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 16.0,
              horizontal: 6.0,
            ),
            child: Text.rich(
              _controller.code,
              style: const TextStyle(
                fontSize: 12.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
