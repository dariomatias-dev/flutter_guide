import 'package:flutter/material.dart';

import 'package:flutter_guide/src/shared/models/widget_model.dart';

import 'package:flutter_guide/src/features/widget/widget_samples/checkbox_sample.dart';
import 'package:flutter_guide/src/features/widget/widget_samples/column_sample.dart';
import 'package:flutter_guide/src/features/widget/widget_samples/container_sample.dart';
import 'package:flutter_guide/src/features/widget/widget_samples/image_sample.dart';
import 'package:flutter_guide/src/features/widget/widget_samples/list_tile_sample.dart';
import 'package:flutter_guide/src/features/widget/widget_samples/list_view_sample.dart';
import 'package:flutter_guide/src/features/widget/widget_samples/row_sample.dart';
import 'package:flutter_guide/src/features/widget/widget_samples/stack_sample.dart';
import 'package:flutter_guide/src/features/widget/widget_samples/text_sample.dart';

const widgets = <WidgetModel>[
  WidgetModel(
    name: 'Text',
    icon: Icons.text_fields,
    sample: TextSample(),
    category: WidgetCategory.widgets,
  ),
  WidgetModel(
    name: 'Image',
    icon: Icons.image,
    youtubeLink: '7oIAs-0G4mw?si=Ay5lAKDi1TIZxcwN',
    sample: ImageSample(),
    category: WidgetCategory.widgets,
  ),
  WidgetModel(
    name: 'Container',
    icon: Icons.crop_square,
    youtubeLink: 'c1xLMaTUWCY?si=PrsjqoW2tDReZUxp',
    sample: ContainerSample(),
    category: WidgetCategory.widgets,
  ),
  WidgetModel(
    name: 'Row',
    icon: Icons.view_week,
    sample: RowSample(),
    category: WidgetCategory.widgets,
  ),
  WidgetModel(
    name: 'Column',
    icon: Icons.view_column,
    sample: ColumnSample(),
    category: WidgetCategory.widgets,
  ),
  WidgetModel(
    name: 'List View',
    icon: Icons.list,
    youtubeLink: 'KJpkjHGiI5A?si=MJEvCI9lL4kFg03_',
    sample: ListViewSample(),
    category: WidgetCategory.widgets,
  ),
  WidgetModel(
    name: 'Stack',
    icon: Icons.layers,
    youtubeLink: 'liEGSeD3Zt8?si=kn6VHbJgeHzG6C_N',
    sample: StackSample(),
    category: WidgetCategory.widgets,
  ),
  WidgetModel(
    name: 'Checkbox',
    icon: Icons.check_box,
    sample: CheckboxSample(),
    category: WidgetCategory.material,
  ),
  WidgetModel(
    name: 'List Tile',
    icon: Icons.list_alt,
    youtubeLink: 'l8dj0yPBvgQ?si=3mUG7NVusfY126bs',
    sample: ListTileSample(),
    category: WidgetCategory.material,
  ),
];

Map<String, WidgetSample> widgetSamples() {
  Map<String, WidgetSample> samples = {};
  for (WidgetModel widget in widgets) {
    samples[widget.name.replaceAll(" ", "_").toLowerCase()] = WidgetSample(
      sample: widget.sample,
      category: widget.category,
    );
  }

  return samples;
}
