import 'package:flutter/material.dart';

import 'package:flutter_guide/src/shared/widgets/component_list/card_widget/save_button/save_button_controller.dart';
import 'package:flutter_guide/src/shared/widgets/trailing_icon_button_widget.dart';

class SaveButtonWidget extends StatefulWidget {
  const SaveButtonWidget({
    super.key,
    required this.componentName,
  });

  final String componentName;

  @override
  State<SaveButtonWidget> createState() => _SaveButtonWidgetState();
}

class _SaveButtonWidgetState extends State<SaveButtonWidget> {
  late SaveButtonController _controller;

  @override
  void didChangeDependencies() {
    _controller = SaveButtonController(
      context: context,
      componentName: widget.componentName,
    );

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return IconButtonWidget(
      onTap: () {
        _controller.favoritesService.toggleWidgetState(
          context,
          widget.componentName,
        );

        _controller.favoriteNotifier.setValue(widget.componentName);
      },
      child: ValueListenableBuilder(
        valueListenable: _controller.favoriteNotifier,
        builder: (context, value, child) {
          _controller.setSaved(widget.componentName);

          return Icon(
            _controller.saved ? Icons.bookmark : Icons.bookmark_border,
            color: Theme.of(context).colorScheme.primary,
            size: 20.0,
          );
        },
      ),
    );
  }
}
