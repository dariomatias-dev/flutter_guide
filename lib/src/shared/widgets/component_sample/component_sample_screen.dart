import 'dart:io';

import 'package:flutter/material.dart';

import 'package:flutter_guide/src/providers/component_sample_screen_inherited_widget.dart';

import 'package:flutter_guide/src/shared/widgets/component_sample/widgets/app_bar/app_bar_widget.dart';
import 'package:flutter_guide/src/shared/widgets/component_sample/widgets/code_tab/code_tab_widget.dart';

class ComponentSampleScreen extends StatefulWidget {
  const ComponentSampleScreen({
    super.key,
    required this.title,
    // required this.popupMenuItems,
    required this.file,
    required this.sample,
  });

  final String title;
  // final List<PopupMenuEntry> popupMenuItems;
  final File file;
  final Widget sample;

  @override
  State<ComponentSampleScreen> createState() => _ComponentSampleScreenState();
}

class _ComponentSampleScreenState extends State<ComponentSampleScreen> {
  @override
  Widget build(BuildContext context) {
    return ComponentSampleScreenInheritedWidget(
      file: widget.file,
      child: DefaultTabController(
        initialIndex: 0,
        length: 2,
        child: Scaffold(
          appBar: AppBarWidget(
            title: widget.title,
            // popupMenuItems: widget.popupMenuItems,
          ),
          body: TabBarView(
            children: <Widget>[
              widget.sample,
              const CodeTab(),
            ],
          ),
        ),
      ),
    );
  }
}
