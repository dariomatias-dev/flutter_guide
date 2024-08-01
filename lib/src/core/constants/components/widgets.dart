import 'package:flutter/material.dart';

import 'package:flutter_guide/src/core/constants/widget_names.dart';
import 'package:flutter_guide/src/core/enums/widget_category_enum.dart';

// Models
import 'package:flutter_guide/src/shared/models/component_model/component_model.dart';
import 'package:flutter_guide/src/shared/models/component_summary_mode/component_summary_mode.dart';
import 'package:flutter_guide/src/shared/models/widget_infos_model/component_infos_model.dart';

// Samples
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/actionchip_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/alertdialog_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/align_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/animatedalign_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/animatedcontainer_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/animatedopacity_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/appbar_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/autocomplete_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/backbutton_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/backdropfilter_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/badge_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/banner_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/bottomappbar_sample.dart';
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
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/cupertinobutton_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/cupertinolisttile_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/cupertinonavigationbar_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/cupertinonavigationbarbackbutton_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/cupertinopagescaffold_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/cupertinoradio_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/cupertinoslider_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/decoratedbox_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/dialog_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/dismissible_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/divider_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/drawer_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/dropdownbutton_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/elevatedbutton_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/expanded_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/expansiontile_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/filledbutton_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/filterchip_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/floatingactionbutton_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/flutterlogo_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/futurebuilder_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/gesturedetector_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/gridview_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/iconbutton_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/ignorepointer_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/image_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/indexedstack_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/inkwell_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/inputchip_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/interactiveviewer_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/linearprogressindicator_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/listenablebuilder_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/listtile_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/listview_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/menuanchor_sample.dart';
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
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/reorderablelistview_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/richtext_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/row_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/safearea_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/scaffold_sample.dart';
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
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/tabbar_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/text_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/textbutton_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/textfield_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/textformfield_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/material_banner_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/togglebuttons_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/tooltip_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/valuelistenablebuilder_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/visibility_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/widgets/wrap_sample.dart';

const widgets = <WidgetModel>[
  WidgetModel(
    name: WidgetNames.actionChipMaterial,
    icon: Icons.label_outline,
    sample: ActionchipSample(),
    category: WidgetCategory.material,
  ),
  WidgetModel(
    name: WidgetNames.alertDialogMaterial,
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
    name: WidgetNames.animatedAlignWidget,
    icon: Icons.center_focus_strong,
    videoId: 'g2E7yl3MwMk',
    sample: AnimatedAlignSample(),
    category: WidgetCategory.widgets,
  ),
  WidgetModel(
    name: WidgetNames.animatedContainerWidget,
    icon: Icons.animation,
    sample: AnimatedContainerSample(),
    category: WidgetCategory.widgets,
  ),
  WidgetModel(
    name: WidgetNames.animatedOpacityWidget,
    icon: Icons.opacity,
    videoId: 'QZAvjqOqiLY',
    sample: AnimatedOpacitySample(),
    category: WidgetCategory.widgets,
  ),
  WidgetModel(
    name: WidgetNames.appBarMaterial,
    icon: Icons.menu,
    sample: AppBarSample(),
    category: WidgetCategory.material,
  ),
  WidgetModel(
    name: WidgetNames.autocompleteMaterial,
    icon: Icons.search,
    videoId: '-Nny8kzW380',
    sample: AutocompleteSample(),
    category: WidgetCategory.material,
  ),
  WidgetModel(
    name: WidgetNames.backButtonMaterial,
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
    name: WidgetNames.badgeMaterial,
    icon: Icons.badge_outlined,
    sample: BadgeSample(),
    category: WidgetCategory.widgets,
  ),
  WidgetModel(
    name: WidgetNames.bannerWidget,
    icon: Icons.flag,
    sample: BannerSample(),
    category: WidgetCategory.widgets,
  ),
  WidgetModel(
    name: WidgetNames.bottomAppBarMaterial,
    icon: Icons.view_carousel,
    sample: BottomAppBarSample(),
    category: WidgetCategory.material,
  ),
  WidgetModel(
    name: WidgetNames.bottomNavigationBarMaterial,
    icon: Icons.view_carousel,
    sample: BottomNavigationBarSample(),
    category: WidgetCategory.material,
  ),
  WidgetModel(
    name: WidgetNames.cardMaterial,
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
    name: WidgetNames.checkboxMaterial,
    icon: Icons.check_box,
    sample: CheckboxSample(),
    category: WidgetCategory.material,
  ),
  WidgetModel(
    name: WidgetNames.checkboxListTileMaterial,
    icon: Icons.check_box,
    videoId: 'RkSqPAn9szs',
    sample: CheckboxListTileSample(),
    category: WidgetCategory.material,
  ),
  WidgetModel(
    name: WidgetNames.chipMaterial,
    icon: Icons.label_outline,
    sample: ChipSample(),
    category: WidgetCategory.material,
  ),
  WidgetModel(
    name: WidgetNames.choiceChipMaterial,
    icon: Icons.label_outline,
    sample: ChoiceChipSample(),
    category: WidgetCategory.material,
  ),
  WidgetModel(
    name: WidgetNames.circleAvatarMaterial,
    icon: Icons.person,
    sample: CircleAvatarSample(),
    category: WidgetCategory.material,
  ),
  WidgetModel(
    name: WidgetNames.circularProgressIndicatorMaterial,
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
    name: WidgetNames.cupertinoActivityIndicatorCupertino,
    icon: Icons.cached,
    videoId: 'AENVH-ZqKDQ',
    sample: CupertinoActivityIndicatorSample(),
    category: WidgetCategory.cupertino,
  ),
  WidgetModel(
    name: WidgetNames.cupertinoAlertDialogCupertino,
    icon: Icons.chat_bubble_outline,
    videoId: '75CsnyRXf5I',
    sample: CupertinoAlertDialogSample(),
    category: WidgetCategory.cupertino,
  ),
  WidgetModel(
    name: WidgetNames.cupertinoButtonCupertino,
    icon: Icons.crop_16_9,
    sample: CupertinoButtonSample(),
    category: WidgetCategory.cupertino,
  ),
  WidgetModel(
    name: WidgetNames.cupertinoListTileCupertino,
    icon: Icons.list_alt,
    sample: CupertinoListTileSample(),
    category: WidgetCategory.cupertino,
  ),
  WidgetModel(
    name: WidgetNames.cupertinoNavigationBarCupertino,
    icon: Icons.menu,
    sample: CupertinoNavigationBarSample(),
    category: WidgetCategory.cupertino,
  ),
  WidgetModel(
    name: WidgetNames.cupertinoNavigationBarBackButtonCupertino,
    icon: Icons.arrow_back_ios_new_rounded,
    sample: CupertinoNavigationBarBackButtonSample(),
    category: WidgetCategory.cupertino,
  ),
  WidgetModel(
    name: WidgetNames.cupertinoPageScaffoldCupertino,
    icon: Icons.dashboard,
    sample: CupertinoPageScaffoldSample(),
    category: WidgetCategory.cupertino,
  ),
  WidgetModel(
    name: WidgetNames.cupertinoRadioCupertino,
    icon: Icons.radio_button_checked,
    sample: CupertinoRadioSample(),
    category: WidgetCategory.cupertino,
  ),
  WidgetModel(
    name: WidgetNames.cupertinoSliderCupertino,
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
    name: WidgetNames.dialogMaterial,
    icon: Icons.chat_bubble_outline,
    sample: DialogSample(),
    category: WidgetCategory.material,
  ),
  WidgetModel(
    name: WidgetNames.dismissibleMaterial,
    icon: Icons.delete_outline,
    videoId: 'iEMgjrfuc58',
    sample: DismissibleSample(),
    category: WidgetCategory.widgets,
  ),
  WidgetModel(
    name: WidgetNames.dividerMaterial,
    icon: Icons.remove,
    videoId: '_liUC641Nmk',
    sample: DividerSample(),
    category: WidgetCategory.material,
  ),
  WidgetModel(
    name: WidgetNames.drawerMaterial,
    icon: Icons.menu,
    videoId: 'WRj86iHihgY',
    sample: DrawerSample(),
    category: WidgetCategory.material,
  ),
  WidgetModel(
    name: WidgetNames.dropdownButtonMaterial,
    icon: Icons.arrow_drop_down,
    videoId: 'ZzQ_PWrFihg',
    sample: DropdownButtonSample(),
    category: WidgetCategory.material,
  ),
  WidgetModel(
    name: WidgetNames.elevatedButtonMaterial,
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
    name: WidgetNames.expansionTileMaterial,
    icon: Icons.keyboard_arrow_down_rounded,
    sample: ExpansionTileSample(),
    category: WidgetCategory.material,
  ),
  WidgetModel(
    name: WidgetNames.filledButtonMaterial,
    icon: Icons.crop_16_9,
    sample: FilledButtonSample(),
    category: WidgetCategory.material,
  ),
  WidgetModel(
    name: WidgetNames.filterChipMaterial,
    icon: Icons.label_outline,
    sample: FilterChipSample(),
    category: WidgetCategory.material,
  ),
  WidgetModel(
    name: WidgetNames.floatingActionButtonMaterial,
    icon: Icons.add,
    sample: FloatingActionButtonSample(),
    category: WidgetCategory.material,
  ),
  WidgetModel(
    name: WidgetNames.flutterLogoMaterial,
    icon: Icons.flutter_dash,
    videoId: 'aAmP-WcI6dg',
    sample: FlutterLogoSample(),
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
    name: WidgetNames.gestureDetectorWidget,
    icon: Icons.gesture,
    videoId: 'WhVXkCFPmK4',
    sample: GestureDetectorSample(),
    category: WidgetCategory.widgets,
  ),
  WidgetModel(
    name: WidgetNames.gridViewWidget,
    icon: Icons.grid_3x3,
    sample: GridViewSample(),
    category: WidgetCategory.widgets,
  ),
  WidgetModel(
    name: WidgetNames.iconButtonMaterial,
    icon: Icons.crop_16_9,
    sample: IconButtonSample(),
    category: WidgetCategory.material,
  ),
  WidgetModel(
    name: WidgetNames.ignorePointerWidget,
    icon: Icons.block,
    videoId: 'qV9pqHWxYgI',
    sample: IgnorePointerSample(),
    category: WidgetCategory.widgets,
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
    name: WidgetNames.inkWellMaterial,
    icon: Icons.touch_app_outlined,
    sample: InkWellSample(),
    category: WidgetCategory.material,
  ),
  WidgetModel(
    name: WidgetNames.inputChipMaterial,
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
    name: WidgetNames.linearProgressIndicatorMaterial,
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
    name: WidgetNames.listTileMaterial,
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
    name: WidgetNames.materialBannerMaterial,
    icon: Icons.flag_outlined,
    sample: MaterialBannerSample(),
    category: WidgetCategory.material,
  ),
  WidgetModel(
    name: WidgetNames.menuAnchorMaterial,
    icon: Icons.search,
    sample: MenuAnchorSample(),
    category: WidgetCategory.material,
  ),
  WidgetModel(
    name: WidgetNames.navigationBarMaterial,
    icon: Icons.view_carousel,
    videoId: 'DVGYddFaLv0',
    sample: NavigationBarSample(),
    category: WidgetCategory.material,
  ),
  WidgetModel(
    name: WidgetNames.navigationRailMaterial,
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
    name: WidgetNames.outlinedButtonMaterial,
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
    name: WidgetNames.popupMenuButtonMaterial,
    icon: Icons.more_vert,
    sample: PopupMenuButtonSample(),
    category: WidgetCategory.material,
  ),
  WidgetModel(
    name: WidgetNames.radioMaterial,
    icon: Icons.radio_button_checked,
    sample: RadioSample(),
    category: WidgetCategory.material,
  ),
  WidgetModel(
    name: WidgetNames.radioListTileMaterial,
    icon: Icons.radio_button_checked,
    sample: RadioListTileSample(),
    category: WidgetCategory.material,
  ),
  WidgetModel(
    name: WidgetNames.rangeSliderMaterial,
    icon: Icons.tune,
    videoId: 'ufb4gIPDmEs',
    sample: RangeSliderSample(),
    category: WidgetCategory.material,
  ),
  WidgetModel(
    name: WidgetNames.reorderableListViewMaterial,
    icon: Icons.drag_handle,
    videoId: '3fB1mxOsqJE',
    sample: ReorderableListViewSample(),
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
    name: WidgetNames.scaffoldMaterial,
    icon: Icons.dashboard,
    sample: ScaffoldSample(),
    category: WidgetCategory.material,
  ),
  WidgetModel(
    name: WidgetNames.segmentedButtonMaterial,
    icon: Icons.linear_scale_sharp,
    sample: SegmentedButtonSample(),
    category: WidgetCategory.material,
  ),
  WidgetModel(
    name: WidgetNames.selectableTextMaterial,
    icon: Icons.text_fields,
    videoId: 'ZSU3ZXOs6hc',
    sample: SelectableTextSample(),
    category: WidgetCategory.material,
  ),
  WidgetModel(
    name: WidgetNames.simpleDialogMaterial,
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
    name: WidgetNames.sliderMaterial,
    icon: Icons.tune,
    videoId: 'ufb4gIPDmEs',
    sample: SliderSample(),
    category: WidgetCategory.material,
  ),
  WidgetModel(
    name: WidgetNames.snackBarMaterial,
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
    name: WidgetNames.switchListTileMaterial,
    icon: Icons.toggle_on,
    sample: SwitchListTileSample(),
    category: WidgetCategory.material,
  ),
  WidgetModel(
    name: WidgetNames.tabBarSampleMaterial,
    icon: Icons.view_module,
    videoId: 'POtoEH-5l40',
    sample: TabBarSample(),
    category: WidgetCategory.material,
  ),
  WidgetModel(
    name: WidgetNames.textWidget,
    icon: Icons.text_fields,
    sample: TextSample(),
    category: WidgetCategory.widgets,
  ),
  WidgetModel(
    name: WidgetNames.textButtonMaterial,
    icon: Icons.text_fields,
    sample: TextButtonSample(),
    category: WidgetCategory.material,
  ),
  WidgetModel(
    name: WidgetNames.textFieldMaterial,
    icon: Icons.edit,
    sample: TextFieldSample(),
    category: WidgetCategory.material,
  ),
  WidgetModel(
    name: WidgetNames.textFormFieldMaterial,
    icon: Icons.edit,
    sample: TextFormFieldSample(),
    category: WidgetCategory.material,
  ),
  WidgetModel(
    name: WidgetNames.toggleButtonsMaterial,
    icon: Icons.check_box,
    videoId: 'kVEguaQWGAY',
    sample: ToggleButtonsSample(),
    category: WidgetCategory.material,
  ),
  WidgetModel(
    name: WidgetNames.tooltipMaterial,
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
    name: WidgetNames.visibilityWidget,
    icon: Icons.visibility_outlined,
    sample: VisibilitySample(),
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
  final widgetNames = <String>[];
  Map<String, WidgetSummaryModel> samples = {};

  for (WidgetModel widget in widgets) {
    widgetNames.add(
      widget.name,
    );

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
