import 'package:flutter/material.dart';

import 'package:flutter_guide/src/providers/user_preferences_inherited_widget.dart';

import 'package:flutter_guide/src/shared/models/widget_model.dart';
import 'package:flutter_guide/src/shared/widgets/card_widget/card_widget.dart';

class WidgetListWidget extends StatefulWidget {
  const WidgetListWidget({
    super.key,
    required this.widgets,
  });

  final List<WidgetModel> widgets;

  @override
  State<WidgetListWidget> createState() => _WidgetListWidgetState();
}

class _WidgetListWidgetState extends State<WidgetListWidget> {
  late List<String> _savedWidgets;

  @override
  void didChangeDependencies() {
    final sharedPreferences =
        UserPreferencesInheritedWidget.of(context)!.sharedPreferences;
    _savedWidgets = sharedPreferences.getStringList('saved_widgets')!;

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: widget.widgets.length,
      itemBuilder: (context, index) {
        final flutterWidget = widget.widgets[index];

        return CardWidget(
          icon: flutterWidget.icon,
          widgetName: flutterWidget.name,
          youtubeLink: flutterWidget.youtubeLink,
          saved: _savedWidgets.contains(flutterWidget.name),
        );
      },
    );
  }
}
