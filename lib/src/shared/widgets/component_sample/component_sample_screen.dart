import 'package:flutter/material.dart';

import 'package:flutter_guide/src/providers/component_sample_screen_inherited_widget.dart';
import 'package:flutter_guide/src/providers/user_preferences_inherited_widget.dart';

import 'package:flutter_guide/src/shared/widgets/component_sample/widgets/component_sample_app_bar/component_sample_app_bar_widget.dart';
import 'package:flutter_guide/src/shared/widgets/component_sample/widgets/code_tab/code_tab_widget.dart';

class ComponentSampleScreen extends StatefulWidget {
  const ComponentSampleScreen({
    super.key,
    required this.title,
    this.popupMenuItems,
    required this.filePath,
    required this.sample,
  });

  final String title;
  final List<PopupMenuEntry>? popupMenuItems;
  final String filePath;
  final Widget sample;

  @override
  State<ComponentSampleScreen> createState() => _ComponentSampleScreenState();
}

class _ComponentSampleScreenState extends State<ComponentSampleScreen> {
  @override
  Widget build(BuildContext context) {
    return ComponentSampleScreenInheritedWidget(
      file: widget.filePath,
      child: DefaultTabController(
        initialIndex: 0,
        length: 2,
        child: Scaffold(
          appBar: ComponentSampleAppBarWidget(
            title: widget.title,
            popupMenuItems: widget.popupMenuItems,
          ),
          body: TabBarView(
            children: <Widget>[
              AnimatedBuilder(
                animation: UserPreferencesInheritedWidget.of(context)!.themeController,
                builder: (context, child) {
                  return Theme(
                    data: Theme.of(context).brightness == Brightness.light
                        ? ThemeData.light()
                        : ThemeData.dark(),
                    child: widget.sample,
                  );
                },
              ),
              const CodeTab(),
            ],
          ),
        ),
      ),
    );
  }
}
