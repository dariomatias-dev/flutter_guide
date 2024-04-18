import 'package:flutter/material.dart';

import 'package:flutter_guide/src/core/constants/widget_names.dart';
import 'package:flutter_guide/src/core/enums/widget_category_enum.dart';

// Samples
import 'package:flutter_guide/src/features/widget/widget_samples/alertdialog_sample.dart';
import 'package:flutter_guide/src/features/widget/widget_samples/align_sample.dart';
import 'package:flutter_guide/src/features/widget/widget_samples/animatedcontainer_sample.dart';
import 'package:flutter_guide/src/features/widget/widget_samples/checkbox_sample.dart';
import 'package:flutter_guide/src/features/widget/widget_samples/checkboxlisttile_sample.dart';
import 'package:flutter_guide/src/features/widget/widget_samples/circleavatar_sample.dart';
import 'package:flutter_guide/src/features/widget/widget_samples/clipoval_sample.dart';
import 'package:flutter_guide/src/features/widget/widget_samples/cliprrect_sample.dart';
import 'package:flutter_guide/src/features/widget/widget_samples/column_sample.dart';
import 'package:flutter_guide/src/features/widget/widget_samples/container_sample.dart';
import 'package:flutter_guide/src/features/widget/widget_samples/elevatedbutton_sample.dart';
import 'package:flutter_guide/src/features/widget/widget_samples/floatingactionbutton_sample.dart';
import 'package:flutter_guide/src/features/widget/widget_samples/iconbutton_sample.dart';
import 'package:flutter_guide/src/features/widget/widget_samples/image_sample.dart';
import 'package:flutter_guide/src/features/widget/widget_samples/listtile_sample.dart';
import 'package:flutter_guide/src/features/widget/widget_samples/listview_sample.dart';
import 'package:flutter_guide/src/features/widget/widget_samples/radio_sample.dart';
import 'package:flutter_guide/src/features/widget/widget_samples/radiolisttile_sample.dart';
import 'package:flutter_guide/src/features/widget/widget_samples/richtext_sample.dart';
import 'package:flutter_guide/src/features/widget/widget_samples/row_sample.dart';
import 'package:flutter_guide/src/features/widget/widget_samples/selectabletext_sample.dart';
import 'package:flutter_guide/src/features/widget/widget_samples/simpledialog_sample.dart';
import 'package:flutter_guide/src/features/widget/widget_samples/stack_sample.dart';
import 'package:flutter_guide/src/features/widget/widget_samples/Switch_sample.dart';
import 'package:flutter_guide/src/features/widget/widget_samples/text_sample.dart';
import 'package:flutter_guide/src/features/widget/widget_samples/textformfield_sample.dart';

// Models
import 'package:flutter_guide/src/shared/models/component_model/component_model.dart';
import 'package:flutter_guide/src/shared/models/component_summary_mode/component_summary_mode.dart';
import 'package:flutter_guide/src/shared/models/widget_infos_model/component_infos_model.dart';

const widgets = <WidgetModel>[
  WidgetModel(
    name: WidgetNames.alertDialogWidget,
    icon: Icons.chat_bubble_outline,
    videoId: 'yI-8QHpGIP4',
    sample: AlertDialogSample(),
    category: WidgetCategory.material,
  ),
  WidgetModel(
    name: WidgetNames.alignWidget,
    icon: Icons.center_focus_strong,
    videoId: 'g2E7yl3MwMk',
    sample: AlignSample(),
    category: WidgetCategory.material,
  ),
  WidgetModel(
    name: WidgetNames.animatedContainerWidget,
    icon: Icons.animation,
    sample: AnimatedContainerSample(),
    category: WidgetCategory.material,
  ),
  WidgetModel(
    name: WidgetNames.checkboxWidget,
    icon: Icons.check_box,
    sample: CheckboxSample(),
    category: WidgetCategory.material,
  ),
  WidgetModel(
    name: WidgetNames.checkboxListTileWidget,
    icon: Icons.check_box,
    videoId: 'RkSqPAn9szs',
    sample: CheckboxListTileSample(),
    category: WidgetCategory.material,
  ),
  WidgetModel(
    name: WidgetNames.circleAvatarWidget,
    icon: Icons.person,
    sample: CircleAvatarSample(),
    category: WidgetCategory.material,
  ),
  WidgetModel(
    name: WidgetNames.clipRRectWidget,
    icon: Icons.crop,
    sample: ClipRRectSample(),
    category: WidgetCategory.widgets,
  ),
  WidgetModel(
    name: WidgetNames.clipOvalWidget,
    icon: Icons.crop,
    sample: ClipOvalSample(),
    category: WidgetCategory.widgets,
  ),
  WidgetModel(
    name: WidgetNames.columnWidget,
    icon: Icons.view_column,
    sample: ColumnSample(),
    category: WidgetCategory.widgets,
  ),
  WidgetModel(
    name: WidgetNames.containerWidget,
    icon: Icons.crop_square,
    videoId: 'c1xLMaTUWCY',
    sample: ContainerSample(),
    category: WidgetCategory.widgets,
  ),
  WidgetModel(
    name: WidgetNames.elevatedButtonWidget,
    icon: Icons.crop_16_9,
    sample: ElevatedButtonSample(),
    category: WidgetCategory.material,
  ),
  WidgetModel(
    name: WidgetNames.floatingActionButtonWidget,
    icon: Icons.add,
    sample: FloatingActionButtonSample(),
    category: WidgetCategory.material,
  ),
  WidgetModel(
    name: WidgetNames.iconButtonWidget,
    icon: Icons.crop_16_9,
    sample: IconButtonSample(),
    category: WidgetCategory.material,
  ),
  WidgetModel(
    name: WidgetNames.imageWidget,
    icon: Icons.image,
    videoId: '7oIAs-0G4mw',
    sample: ImageSample(),
    category: WidgetCategory.widgets,
  ),
  WidgetModel(
    name: WidgetNames.listTileWidget,
    icon: Icons.list_alt,
    videoId: 'l8dj0yPBvgQ',
    sample: ListTileSample(),
    category: WidgetCategory.material,
  ),
  WidgetModel(
    name: WidgetNames.listViewWidget,
    icon: Icons.list,
    videoId: 'KJpkjHGiI5A',
    sample: ListViewSample(),
    category: WidgetCategory.widgets,
  ),
  WidgetModel(
    name: WidgetNames.richTextWidget,
    icon: Icons.text_fields,
    videoId: 'rykDVh-QFfw',
    sample: RichTextSample(),
    category: WidgetCategory.material,
  ),
  WidgetModel(
    name: WidgetNames.radioWidget,
    icon: Icons.radio_button_checked,
    sample: RadioSample(),
    category: WidgetCategory.material,
  ),
  WidgetModel(
    name: WidgetNames.radioListTileWidget,
    icon: Icons.radio_button_checked,
    sample: RadioListTileSample(),
    category: WidgetCategory.material,
  ),
  WidgetModel(
    name: WidgetNames.rowWidget,
    icon: Icons.view_week,
    sample: RowSample(),
    category: WidgetCategory.widgets,
  ),
  WidgetModel(
    name: WidgetNames.selectableTextWidget,
    icon: Icons.text_fields,
    videoId: 'ZSU3ZXOs6hc',
    sample: SelectableTextSample(),
    category: WidgetCategory.material,
  ),
  WidgetModel(
    name: WidgetNames.simpleDialogWidget,
    icon: Icons.chat_bubble_outline,
    sample: SimpleDialogSample(),
    category: WidgetCategory.material,
  ),
  WidgetModel(
    name: WidgetNames.stackWidget,
    icon: Icons.layers,
    videoId: 'liEGSeD3Zt8',
    sample: StackSample(),
    category: WidgetCategory.widgets,
  ),
  WidgetModel(
    name: WidgetNames.switchWidget,
    icon: Icons.toggle_on,
    sample: SwitchSample(),
    category: WidgetCategory.widgets,
  ),
  WidgetModel(
    name: WidgetNames.textWidget,
    icon: Icons.text_fields,
    sample: TextSample(),
    category: WidgetCategory.widgets,
  ),
  WidgetModel(
    name: WidgetNames.textFormFieldWidget,
    icon: Icons.edit,
    sample: TextFormFieldSample(),
    category: WidgetCategory.widgets,
  ),
];

WidgetInfosModel getWidgetInfos() {
  List<String> widgetNames = [];
  Map<String, WidgetSummaryModel> samples = {};
  for (WidgetModel widget in widgets) {
    widgetNames.add(widget.name);

    samples[widget.name] = WidgetSummaryModel(
      name: widget.name,
      category: widget.category,
      sample: widget.sample,
    );
  }

  return WidgetInfosModel(
    componentNames: widgetNames,
    samples: samples,
  );
}
