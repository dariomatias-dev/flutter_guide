import 'package:flutter/material.dart';
import 'package:flutter_guide/src/features/widget/widget_samples/container_sample.dart';

import 'package:flutter_guide/src/shared/models/widget_model.dart';

import 'package:flutter_guide/src/features/widget/widget_samples/image_sample.dart';
import 'package:flutter_guide/src/features/widget/widget_samples/text_sample.dart';

const widgets = <WidgetModel>[
  WidgetModel(
    name: 'Text',
    icon: Icons.text_fields,
    sample: TextSample(),
  ),
  WidgetModel(
    name: 'Image',
    icon: Icons.image,
    youtubeLink: '7oIAs-0G4mw?si=Ay5lAKDi1TIZxcwN',
    sample: ImageSample(),
  ),
  WidgetModel(
    name: 'Container',
    icon: Icons.crop_square,
    youtubeLink: 'c1xLMaTUWCY?si=PrsjqoW2tDReZUxp',
    sample: ContainerSample(),
  ),
  WidgetModel(
    name: 'Row',
    icon: Icons.view_week,
  ),
  WidgetModel(
    name: 'Column',
    icon: Icons.view_column,
  ),
  WidgetModel(
    name: 'List View',
    icon: Icons.list,
    youtubeLink: 'KJpkjHGiI5A?si=MJEvCI9lL4kFg03_',
  ),
  WidgetModel(
    name: 'Stack',
    icon: Icons.layers,
    youtubeLink: 'liEGSeD3Zt8?si=kn6VHbJgeHzG6C_N',
  ),
  WidgetModel(
    name: 'CheckBox',
    icon: Icons.check_box,
  ),
  WidgetModel(
    name: 'List Tile',
    icon: Icons.list_alt,
    youtubeLink: 'l8dj0yPBvgQ?si=3mUG7NVusfY126bs',
  ),
];

Map<String, Widget> widgetSamples() {
  Map<String, Widget> samples = {};
  for (WidgetModel widget in widgets) {
    if (widget.sample != null) {
      samples[widget.name.replaceAll(" ", "_").toLowerCase()] = widget.sample!;
    }
  }

  return samples;
}
