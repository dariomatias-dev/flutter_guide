import 'package:flutter/material.dart';

import 'package:flutter_guide/src/core/constants/widget_names.dart';

import 'package:flutter_guide/src/shared/models/component_group_model.dart';

const componentGroups = <ComponentGroupModel>[
  ComponentGroupModel(
    icon: Icons.crop_16_9,
    title: 'Buttons',
    components: [
      WidgetNames.elevatedButton,
      WidgetNames.iconButton,
    ],
  ),
  ComponentGroupModel(
    icon: Icons.chat_bubble_outline,
    title: 'Dialogs',
    components: [
      WidgetNames.alertDialog,
      WidgetNames.simpleDialog,
    ],
  ),
  ComponentGroupModel(
    icon: Icons.crop,
    title: 'Clips',
    components: [
      WidgetNames.clipOval,
      WidgetNames.clipRRect,
    ],
  ),
  ComponentGroupModel(
    icon: Icons.text_fields,
    title: 'Texts',
    components: [
      WidgetNames.text,
    ],
  ),
];
