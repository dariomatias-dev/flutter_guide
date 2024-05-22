import 'package:flutter/material.dart';

import 'package:flutter_guide/src/core/constants/widget_names.dart';
import 'package:flutter_guide/src/core/enums/widget_category_enum.dart';

// Samples
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/actionchip_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/alertdialog_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/align_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/animatedcontainer_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/appbar_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/backbutton_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/backdropfilter_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/banner_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/bottomnavigationbar_widget.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/card_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/center_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/checkbox_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/checkboxlisttile_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/chip_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/choicechip_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/circleavatar_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/circularprogressindicator_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/clipoval_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/cliprrect_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/colorfiltered_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/column_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/constrainedbox_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/container_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/cupertinoactivityindicator_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/cupertinoalertdialog.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/cupertinoslider_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/decoratedbox_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/dialog_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/dismissible_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/drawer_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/dropdownbutton_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/elevatedbutton_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/expanded_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/expansiontile_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/filterchip_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/floatingactionbutton_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/futurebuilder_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/gridview_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/iconbutton_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/image_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/indexedstack_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/inputchip_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/interactiveviewer_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/linearprogressindicator_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/listenablebuilder_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/listtile_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/listview_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/navigationbar_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/navigationrail_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/opacity_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/outlinedbutton_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/pageview_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/placeholder_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/popupmenubutton_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/radio_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/radiolisttile_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/rangeslider_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/richtext_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/row_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/safearea_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/segmentedbutton_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/selectabletext_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/simpledialog_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/singlechildscrollview_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/sizedbox_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/slider_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/snackbar_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/spacer_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/stack_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/switch_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/switchlisttile_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/text_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/textfield_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/textformfield_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/togglebuttons_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/tooltip_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/valuelistenablebuilder_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/wrap_sample.dart';

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
    videoId: '75CsnyRXf5I',
    sample: AlertDialogSample(),
    category: WidgetCategory.material,
  ),
  WidgetModel(
    name: WidgetNames.alignWidget,
    icon: Icons.center_focus_strong,
    videoId: 'g2E7yl3MwMk',
    sample: AlignSample(),
    category: WidgetCategory.widgets,
  ),
  WidgetModel(
    name: WidgetNames.animatedContainerWidget,
    icon: Icons.animation,
    sample: AnimatedContainerSample(),
    category: WidgetCategory.widgets,
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
    name: WidgetNames.backdropFilterWidget,
    icon: Icons.opacity,
    videoId: 'dYRs7Q1vfYI',
    sample: BackdropFilterSample(),
    category: WidgetCategory.widgets,
  ),
  WidgetModel(
    name: WidgetNames.bannerWidget,
    icon: Icons.flag,
    sample: BannerSample(),
    category: WidgetCategory.widgets,
  ),
  WidgetModel(
    name: WidgetNames.bottomNavigationBarWidget,
    icon: Icons.view_carousel,
    sample: BottomNavigationBarSample(),
    category: WidgetCategory.material,
  ),
  WidgetModel(
    name: WidgetNames.cardWidget,
    icon: Icons.dashboard_outlined,
    sample: CardSample(),
    category: WidgetCategory.material,
  ),
  WidgetModel(
    name: WidgetNames.centerWidget,
    icon: Icons.center_focus_strong_outlined,
    sample: CenterSample(),
    category: WidgetCategory.widgets,
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
    name: WidgetNames.chipWidget,
    icon: Icons.label_outline,
    sample: ChipSample(),
    category: WidgetCategory.material,
  ),
  WidgetModel(
    name: WidgetNames.choiceChipWidget,
    icon: Icons.label_outline,
    sample: ChoiceChipSample(),
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
    name: WidgetNames.colorFilteredWidget,
    icon: Icons.brush,
    videoId: 'F7Cll22Dno8',
    sample: ColorFilteredSample(),
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
    name: WidgetNames.cupertinoActivityIndicatorWidget,
    icon: Icons.cached,
    videoId: 'AENVH-ZqKDQ',
    sample: CupertinoActivityIndicatorSample(),
    category: WidgetCategory.cupertino,
  ),
  WidgetModel(
    name: WidgetNames.cupertinoAlertDialogWidget,
    icon: Icons.chat_bubble_outline,
    videoId: '75CsnyRXf5I',
    sample: CupertinoAlertDialogSample(),
    category: WidgetCategory.cupertino,
  ),
  WidgetModel(
    name: WidgetNames.cupertinoSliderWidget,
    icon: Icons.tune,
    videoId: 'ufb4gIPDmEs',
    sample: CupertinoSliderSample(),
    category: WidgetCategory.cupertino,
  ),
  WidgetModel(
    name: WidgetNames.decoratedBoxWidget,
    icon: Icons.image,
    sample: DecoratedBoxSample(),
    category: WidgetCategory.widgets,
  ),
  WidgetModel(
    name: WidgetNames.dialogWidget,
    icon: Icons.chat_bubble_outline,
    sample: DialogSample(),
    category: WidgetCategory.material,
  ),
  WidgetModel(
    name: WidgetNames.dismissibleWidget,
    icon: Icons.delete_outline,
    videoId: 'iEMgjrfuc58',
    sample: DismissibleSample(),
    category: WidgetCategory.widgets,
  ),
  WidgetModel(
    name: WidgetNames.drawerWidget,
    icon: Icons.menu,
    videoId: 'WRj86iHihgY',
    sample: DrawerSample(),
    category: WidgetCategory.material,
  ),
  WidgetModel(
    name: WidgetNames.dropdownButtonWidget,
    icon: Icons.arrow_drop_down,
    videoId: 'ZzQ_PWrFihg',
    sample: DropdownButtonSample(),
    category: WidgetCategory.material,
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
    category: WidgetCategory.widgets,
  ),
  WidgetModel(
    name: WidgetNames.expansionTileWidget,
    icon: Icons.keyboard_arrow_down_rounded,
    sample: ExpansionTileSample(),
    category: WidgetCategory.material,
  ),
  WidgetModel(
    name: WidgetNames.filterChipWidget,
    icon: Icons.label_outline,
    sample: FilterChipSample(),
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
    category: WidgetCategory.widgets,
  ),
  WidgetModel(
    name: WidgetNames.gridViewWidget,
    icon: Icons.grid_3x3,
    sample: GridViewSample(),
    category: WidgetCategory.widgets,
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
    name: WidgetNames.inputChipWidget,
    icon: Icons.label_outline,
    sample: InputChipSample(),
    category: WidgetCategory.material,
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
    category: WidgetCategory.material,
  ),
  WidgetModel(
    name: WidgetNames.listenableBuilderWidget,
    icon: Icons.transform,
    sample: ListenableBuilderSample(),
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
    name: WidgetNames.navigationBarWidget,
    icon: Icons.view_carousel,
    videoId: 'DVGYddFaLv0',
    sample: NavigationBarSample(),
    category: WidgetCategory.material,
  ),
  WidgetModel(
    name: WidgetNames.navigationRailWidget,
    icon: Icons.view_carousel,
    videoId: 'y9xchtVTtqQ',
    sample: NavigationRailSample(),
    category: WidgetCategory.material,
  ),
  WidgetModel(
    name: WidgetNames.opacityWidget,
    icon: Icons.opacity,
    videoId: '9hltevOHQBw',
    sample: OpacitySample(),
    category: WidgetCategory.widgets,
  ),
  WidgetModel(
    name: WidgetNames.outlinedButtonWidget,
    icon: Icons.crop_16_9,
    sample: OutlinedButtonSample(),
    category: WidgetCategory.material,
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
    category: WidgetCategory.widgets,
  ),
  WidgetModel(
    name: WidgetNames.rowWidget,
    icon: Icons.view_week,
    sample: RowSample(),
    category: WidgetCategory.widgets,
  ),
  WidgetModel(
    name: WidgetNames.safeAreaWidget,
    icon: Icons.border_outer,
    videoId: 'lkF0TQJO0bA',
    sample: SafeAreaSample(),
    category: WidgetCategory.widgets,
  ),
  WidgetModel(
    name: WidgetNames.segmentedButtonWidget,
    icon: Icons.linear_scale_sharp,
    sample: SegmentedButtonSample(),
    category: WidgetCategory.material,
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
    category: WidgetCategory.widgets,
  ),
  WidgetModel(
    name: WidgetNames.sizedBoxWidget,
    icon: Icons.crop_square,
    videoId: 'EHPu_DzRfqA',
    sample: SizedBoxSample(),
    category: WidgetCategory.widgets,
  ),
  WidgetModel(
    name: WidgetNames.sliderWidget,
    icon: Icons.tune,
    videoId: 'ufb4gIPDmEs',
    sample: SliderSample(),
    category: WidgetCategory.material,
  ),
  WidgetModel(
    name: WidgetNames.snackBarWidget,
    icon: Icons.info_outline,
    videoId: 'zpO6n_oZWw0',
    sample: SnackBarSample(),
    category: WidgetCategory.material,
  ),
  WidgetModel(
    name: WidgetNames.spacerWidget,
    icon: Icons.linear_scale,
    videoId: '7FJgd7QN1zI',
    sample: SpacerSample(),
    category: WidgetCategory.widgets,
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
    category: WidgetCategory.material,
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
    category: WidgetCategory.material,
  ),
  WidgetModel(
    name: WidgetNames.textFormFieldWidget,
    icon: Icons.edit,
    sample: TextFormFieldSample(),
    category: WidgetCategory.material,
  ),
  WidgetModel(
    name: WidgetNames.toggleButtonsWidget,
    icon: Icons.check_box,
    videoId: 'kVEguaQWGAY',
    sample: ToggleButtonsSample(),
    category: WidgetCategory.material,
  ),
  WidgetModel(
    name: WidgetNames.tooltipWidget,
    icon: Icons.help_outline,
    videoId: 'EeEfD5fI-5Q',
    sample: TooltipSample(),
    category: WidgetCategory.material,
  ),
  WidgetModel(
    name: WidgetNames.valueListenableBuilderWidget,
    icon: Icons.transform,
    videoId: 's-ZG-jS5QHQ',
    sample: ValueListenableBuilderSample(),
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
      videoId: widget.videoId,
      sample: widget.sample,
    );
  }

  return WidgetInfosModel(
    componentNames: widgetNames,
    samples: samples,
  );
}
