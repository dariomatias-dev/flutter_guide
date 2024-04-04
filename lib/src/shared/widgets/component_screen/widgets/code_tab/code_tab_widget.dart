import 'package:flutter/material.dart';

import 'package:flutter_guide/src/core/enums/component_typ_enum.dart';

import 'package:flutter_guide/src/shared/widgets/component_screen/widgets/code_tab/code_tab_controller.dart';

class CodeTab extends StatefulWidget {
  const CodeTab({
    super.key,
    required this.componentType,
    required this.componentName,
  });

  final ComponentType componentType;
  final String componentName;

  @override
  State<CodeTab> createState() => _CodeTabState();
}

class _CodeTabState extends State<CodeTab> {
  final _controller = CodeTabController();

  BuildContext currentContext() => context;

  @override
  void didChangeDependencies() {
    _controller.loadCode(
      widget.componentType,
      widget.componentName,
      currentContext,
      () {
        setState(() {});
      },
    );

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
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
    );
  }
}
