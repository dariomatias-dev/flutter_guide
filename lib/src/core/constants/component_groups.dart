import 'package:flutter/material.dart';

import 'package:flutter_guide/src/core/constants/widget_names.dart';

import 'package:flutter_guide/src/shared/models/component_group_model.dart';

const componentGroups = <ComponentGroupModel>[
  ComponentGroupModel(
    icon: Icons.crop_16_9,
    title: 'Buttons',
    components: [
      WidgetNames.elevatedButtonWidget,
      WidgetNames.iconButtonWidget,
    ],
  ),
  ComponentGroupModel(
    icon: Icons.chat_bubble_outline,
    title: 'Dialogs',
    components: [
      WidgetNames.alertDialogWidget,
      WidgetNames.simpleDialogWidget,
    ],
  ),
  ComponentGroupModel(
    icon: Icons.crop,
    title: 'Clips',
    components: [
      WidgetNames.clipOvalWidget,
      WidgetNames.clipRRectWidget,
    ],
  ),
  ComponentGroupModel(
    icon: Icons.text_fields,
    title: 'Texts',
    components: [
      WidgetNames.textWidget,
    ],
  ),
];
