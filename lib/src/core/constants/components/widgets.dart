import 'package:flutter/material.dart';

import 'package:flutter_guide/src/core/constants/widget_names.dart';
import 'package:flutter_guide/src/core/enums/widget_category_enum.dart';
import 'package:flutter_guide/src/features/widget/widget_samples/actionchip_sample.dart';

// Samples
import 'package:flutter_guide/src/features/widget/widget_samples/alertdialog_sample.dart';
import 'package:flutter_guide/src/features/widget/widget_samples/align_sample.dart';
import 'package:flutter_guide/src/features/widget/widget_samples/animatedcontainer_sample.dart';
import 'package:flutter_guide/src/features/widget/widget_samples/appbar_sample.dart';
import 'package:flutter_guide/src/features/widget/widget_samples/backbutton_sample.dart';
import 'package:flutter_guide/src/features/widget/widget_samples/banner_sample.dart';
import 'package:flutter_guide/src/features/widget/widget_samples/bottomnavigationbar_widget.dart';
import 'package:flutter_guide/src/features/widget/widget_samples/checkbox_sample.dart';
import 'package:flutter_guide/src/features/widget/widget_samples/checkboxlisttile_sample.dart';
import 'package:flutter_guide/src/features/widget/widget_samples/circleavatar_sample.dart';
import 'package:flutter_guide/src/features/widget/widget_samples/circularprogressindicator_sample.dart';
import 'package:flutter_guide/src/features/widget/widget_samples/clipoval_sample.dart';
import 'package:flutter_guide/src/features/widget/widget_samples/cliprrect_sample.dart';
import 'package:flutter_guide/src/features/widget/widget_samples/column_sample.dart';
import 'package:flutter_guide/src/features/widget/widget_samples/constrainedbox_sample.dart';
import 'package:flutter_guide/src/features/widget/widget_samples/container_sample.dart';
import 'package:flutter_guide/src/features/widget/widget_samples/cupertinoalertdialog.dart';
import 'package:flutter_guide/src/features/widget/widget_samples/cupertinoslider_sample.dart';
import 'package:flutter_guide/src/features/widget/widget_samples/dismissible_sample.dart';
import 'package:flutter_guide/src/features/widget/widget_samples/dropdownbutton_sample.dart';
import 'package:flutter_guide/src/features/widget/widget_samples/elevatedbutton_sample.dart';
import 'package:flutter_guide/src/features/widget/widget_samples/expanded_sample.dart';
import 'package:flutter_guide/src/features/widget/widget_samples/expansiontile_sample.dart';
import 'package:flutter_guide/src/features/widget/widget_samples/floatingactionbutton_sample.dart';
import 'package:flutter_guide/src/features/widget/widget_samples/futurebuilder_sample.dart';
import 'package:flutter_guide/src/features/widget/widget_samples/gridview_sample.dart';
import 'package:flutter_guide/src/features/widget/widget_samples/iconbutton_sample.dart';
import 'package:flutter_guide/src/features/widget/widget_samples/image_sample.dart';
import 'package:flutter_guide/src/features/widget/widget_samples/indexedstack_sample.dart';
import 'package:flutter_guide/src/features/widget/widget_samples/interactiveviewer_sample.dart';
import 'package:flutter_guide/src/features/widget/widget_samples/linearprogressindicator_sample.dart';
import 'package:flutter_guide/src/features/widget/widget_samples/listtile_sample.dart';
import 'package:flutter_guide/src/features/widget/widget_samples/listview_sample.dart';
import 'package:flutter_guide/src/features/widget/widget_samples/navigationrail_sample.dart';
import 'package:flutter_guide/src/features/widget/widget_samples/opacity_sample.dart';
import 'package:flutter_guide/src/features/widget/widget_samples/pageview_sample.dart';
import 'package:flutter_guide/src/features/widget/widget_samples/placeholder_sample.dart';
import 'package:flutter_guide/src/features/widget/widget_samples/popupmenubutton_sample.dart';
import 'package:flutter_guide/src/features/widget/widget_samples/radio_sample.dart';
import 'package:flutter_guide/src/features/widget/widget_samples/radiolisttile_sample.dart';
import 'package:flutter_guide/src/features/widget/widget_samples/rangeslider_sample.dart';
import 'package:flutter_guide/src/features/widget/widget_samples/richtext_sample.dart';
import 'package:flutter_guide/src/features/widget/widget_samples/row_sample.dart';
import 'package:flutter_guide/src/features/widget/widget_samples/selectabletext_sample.dart';
import 'package:flutter_guide/src/features/widget/widget_samples/simpledialog_sample.dart';
import 'package:flutter_guide/src/features/widget/widget_samples/singlechildscrollview_sample.dart';
import 'package:flutter_guide/src/features/widget/widget_samples/slider_sample.dart';
import 'package:flutter_guide/src/features/widget/widget_samples/stack_sample.dart';
import 'package:flutter_guide/src/features/widget/widget_samples/Switch_sample.dart';
import 'package:flutter_guide/src/features/widget/widget_samples/switchlisttile_sample.dart';
import 'package:flutter_guide/src/features/widget/widget_samples/text_sample.dart';
import 'package:flutter_guide/src/features/widget/widget_samples/textfield_sample.dart';
import 'package:flutter_guide/src/features/widget/widget_samples/textformfield_sample.dart';
import 'package:flutter_guide/src/features/widget/widget_samples/togglebuttons_sample.dart';
import 'package:flutter_guide/src/features/widget/widget_samples/tooltip_sample.dart';
import 'package:flutter_guide/src/features/widget/widget_samples/wrap_sample.dart';

// Models
import 'package:flutter_guide/src/shared/models/component_model/component_model.dart';
import 'package:flutter_guide/src/shared/models/component_summary_mode/component_summary_mode.dart';
import 'package:flutter_guide/src/shared/models/widget_infos_model/component_infos_model.dart';

const widgets = <WidgetModel>[
  WidgetModel(
    name: WidgetNames.actionChipWidget,
    icon: Icons.label_outline,
    sample: ActionchipSample(),
    category: WidgetCategory.material,
  ),
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
    name: WidgetNames.appBarWidget,
    icon: Icons.menu,
    sample: AppBarSample(),
    category: WidgetCategory.material,
  ),
  WidgetModel(
    name: WidgetNames.backButtonWidget,
    icon: Icons.arrow_back,
    sample: BackButtonSample(),
    category: WidgetCategory.material,
  ),
  WidgetModel(
    name: WidgetNames.bannerWidget,
    icon: Icons.flag,
    sample: BannerSample(),
    category: WidgetCategory.material,
  ),
  WidgetModel(
    name: WidgetNames.bottomNavigationBarWidget,
    icon: Icons.view_carousel,
    sample: BottomNavigationBarSample(),
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
    name: WidgetNames.circularProgressIndicatorWidget,
    icon: Icons.cached,
    videoId: 'O-rhXZLtpv0',
    sample: CircularProgressIndicatorSample(),
    category: WidgetCategory.material,
  ),
  WidgetModel(
    name: WidgetNames.clipOvalWidget,
    icon: Icons.crop,
    sample: ClipOvalSample(),
    category: WidgetCategory.widgets,
  ),
  WidgetModel(
    name: WidgetNames.clipRRectWidget,
    icon: Icons.crop,
    sample: ClipRRectSample(),
    category: WidgetCategory.widgets,
  ),
  WidgetModel(
    name: WidgetNames.columnWidget,
    icon: Icons.view_column,
    sample: ColumnSample(),
    category: WidgetCategory.widgets,
  ),
  WidgetModel(
    name: WidgetNames.constrainedBoxWidget,
    icon: Icons.border_all,
    videoId: 'o2KveVr7adg',
    sample: ConstrainedBoxSample(),
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
    name: WidgetNames.cupertinoAlertDialogWidget,
    icon: Icons.chat_bubble_outline,
    videoId: '75CsnyRXf5I',
    sample: CupertinoAlertDialogSample(),
    category: WidgetCategory.widgets,
  ),
  WidgetModel(
    name: WidgetNames.cupertinoSliderWidget,
    icon: Icons.tune,
    videoId: 'ufb4gIPDmEs',
    sample: CupertinoSliderSample(),
    category: WidgetCategory.widgets,
  ),
  WidgetModel(
    name: WidgetNames.dismissibleWidget,
    icon: Icons.delete_outline,
    videoId: 'iEMgjrfuc58',
    sample: DismissibleSample(),
    category: WidgetCategory.widgets,
  ),
  WidgetModel(
    name: WidgetNames.dropdownButtonWidget,
    icon: Icons.arrow_drop_down,
    videoId: 'ZzQ_PWrFihg',
    sample: DropdownButtonSample(),
    category: WidgetCategory.widgets,
  ),
  WidgetModel(
    name: WidgetNames.elevatedButtonWidget,
    icon: Icons.crop_16_9,
    sample: ElevatedButtonSample(),
    category: WidgetCategory.material,
  ),
  WidgetModel(
    name: WidgetNames.expandedWidget,
    icon: Icons.open_with,
    videoId: '_rnZaagadyo',
    sample: ExpandedSample(),
    category: WidgetCategory.material,
  ),
  WidgetModel(
    name: WidgetNames.expansionTileWidget,
    icon: Icons.keyboard_arrow_down_rounded,
    sample: ExpansionTileSample(),
    category: WidgetCategory.material,
  ),
  WidgetModel(
    name: WidgetNames.floatingActionButtonWidget,
    icon: Icons.add,
    sample: FloatingActionButtonSample(),
    category: WidgetCategory.material,
  ),
  WidgetModel(
    name: WidgetNames.futureBuilderWidget,
    icon: Icons.hourglass_empty,
    videoId: 'zEdw_1B7JHY',
    sample: FutureBuilderSample(),
    category: WidgetCategory.material,
  ),
  WidgetModel(
    name: WidgetNames.gridViewWidget,
    icon: Icons.grid_3x3,
    sample: GridViewSample(),
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
    name: WidgetNames.indexedStackWidget,
    icon: Icons.layers,
    videoId: '_O0PPD1Xfbk',
    sample: IndexedStackSample(),
    category: WidgetCategory.widgets,
  ),
  WidgetModel(
    name: WidgetNames.interactiveViewerWidget,
    icon: Icons.zoom_out_map,
    videoId: 'zrn7V3bMJvg',
    sample: InteractiveViewerSample(),
    category: WidgetCategory.widgets,
  ),
  WidgetModel(
    name: WidgetNames.linearProgressIndicatorWidget,
    icon: Icons.cached,
    videoId: 'O-rhXZLtpv0',
    sample: LinearProgressIndicatorSample(),
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
    name: WidgetNames.navigationRailWidget,
    icon: Icons.view_carousel,
    videoId: 'y9xchtVTtqQ',
    sample: NavigationRailSample(),
    category: WidgetCategory.widgets,
  ),
  WidgetModel(
    name: WidgetNames.opacityWidget,
    icon: Icons.opacity,
    videoId: '9hltevOHQBw',
    sample: OpacitySample(),
    category: WidgetCategory.widgets,
  ),
  WidgetModel(
    name: WidgetNames.pageViewWidget,
    icon: Icons.view_carousel,
    videoId: 'J1gE9xvph-A',
    sample: PageViewSample(),
    category: WidgetCategory.widgets,
  ),
  WidgetModel(
    name: WidgetNames.placeholderWidget,
    icon: Icons.border_clear,
    videoId: 'LPe56fezmoo',
    sample: PlaceholderSample(),
    category: WidgetCategory.widgets,
  ),
  WidgetModel(
    name: WidgetNames.popupMenuButtonWidget,
    icon: Icons.more_vert,
    sample: PopupMenuButtonSample(),
    category: WidgetCategory.widgets,
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
    name: WidgetNames.rangeSliderWidget,
    icon: Icons.tune,
    videoId: 'ufb4gIPDmEs',
    sample: RangeSliderSample(),
    category: WidgetCategory.material,
  ),
  WidgetModel(
    name: WidgetNames.richTextWidget,
    icon: Icons.text_fields,
    videoId: 'rykDVh-QFfw',
    sample: RichTextSample(),
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
    name: WidgetNames.singleChildScrollViewWidget,
    icon: Icons.swap_vert,
    sample: SingleChildScrollViewSample(),
    category: WidgetCategory.material,
  ),
  WidgetModel(
    name: WidgetNames.sliderWidget,
    icon: Icons.tune,
    videoId: 'ufb4gIPDmEs',
    sample: SliderSample(),
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
    name: WidgetNames.switchListTileWidget,
    icon: Icons.toggle_on,
    sample: SwitchListTileSample(),
    category: WidgetCategory.widgets,
  ),
  WidgetModel(
    name: WidgetNames.textWidget,
    icon: Icons.text_fields,
    sample: TextSample(),
    category: WidgetCategory.widgets,
  ),
  WidgetModel(
    name: WidgetNames.textFieldWidget,
    icon: Icons.edit,
    sample: TextFieldSample(),
    category: WidgetCategory.widgets,
  ),
  WidgetModel(
    name: WidgetNames.textFormFieldWidget,
    icon: Icons.edit,
    sample: TextFormFieldSample(),
    category: WidgetCategory.widgets,
  ),
  WidgetModel(
    name: WidgetNames.toggleButtonsWidget,
    icon: Icons.check_box,
    videoId: 'kVEguaQWGAY',
    sample: ToggleButtonsSample(),
    category: WidgetCategory.widgets,
  ),
  WidgetModel(
    name: WidgetNames.tooltipWidget,
    icon: Icons.help_outline,
    videoId: 'EeEfD5fI-5Q',
    sample: TooltipSample(),
    category: WidgetCategory.widgets,
  ),
  WidgetModel(
    name: WidgetNames.wrapWidget,
    icon: Icons.view_week,
    videoId: 'z5iw2SeFx2M',
    sample: WrapSample(),
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
