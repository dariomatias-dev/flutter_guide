import 'package:flutter/material.dart';

import 'package:flutter_guide/src/core/constants/package_names.dart';

// Models
import 'package:flutter_guide/src/shared/models/component_model/component_model.dart';
import 'package:flutter_guide/src/shared/models/component_summary_mode/component_summary_mode.dart';

// Samples
import 'package:flutter_guide/src/shared/widgets/component/samples/packages/awesome_snackbar_content_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/packages/battery_plus_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/packages/carousel_slider_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/packages/circular_countdown_timer_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/packages/device_info_plus_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/packages/dio_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/packages/dotted_border_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/packages/flutter_chat_bubble_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/packages/flutter_rating_bar_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/packages/flutter_slidable_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/packages/flutter_spinkit_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/packages/flutter_svg_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/packages/font_awesome_flutter_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/packages/glass_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/packages/google_fonts_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/packages/http_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/packages/icons_plus_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/packages/infinite_scroll_pagination_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/packages/like_button_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/packages/loading_animation_widget_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/packages/loading_indicator_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/packages/msh_checkbox_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/packages/salomon_bottom_bar_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/packages/shared_preferences_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/packages/side_sheet_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/packages/smooth_page_indicator_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/packages/toastification_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/packages/url_launcher_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/packages/uuid_sample.dart';

const packages = <PackageModel>[
  PackageModel(
    name: PackageNames.awesomeSnackbarContentPackage,
    icon: Icons.message_outlined,
    sample: AwesomeSnackbarContentSample(),
  ),
  PackageModel(
    name: PackageNames.batteryPlusPackage,
    icon: Icons.battery_std_rounded,
    sample: BatteryPlusSample(),
  ),
  PackageModel(
    name: PackageNames.carouselSliderPackage,
    icon: Icons.view_carousel,
    sample: CarouselSliderSample(),
  ),
  PackageModel(
    name: PackageNames.circularCountdownTimerPackage,
    icon: Icons.hourglass_empty,
    sample: CircularCountdownTimerSample(),
  ),
  PackageModel(
    name: PackageNames.deviceInfoPlusPackage,
    icon: Icons.devices_rounded,
    sample: DeviceInfoPlusSample(),
  ),
  PackageModel(
    name: PackageNames.dioPackage,
    icon: Icons.wifi,
    sample: DioSample(),
  ),
  PackageModel(
    name: PackageNames.dottedBorderPackage,
    icon: Icons.border_clear_outlined,
    sample: DottedBorderSample(),
  ),
  PackageModel(
    name: PackageNames.flutterChatBubblePackage,
    icon: Icons.chat_outlined,
    sample: FlutterChatBubbleSample(),
  ),
  PackageModel(
    name: PackageNames.flutterRatingBarPackage,
    icon: Icons.star,
    videoId: 'VdkRy3yZiPo',
    sample: FlutterRatingBarSample(),
  ),
  PackageModel(
    name: PackageNames.flutterSlidablePackage,
    icon: Icons.more_horiz,
    videoId: 'QFcFEpFmNJ8',
    sample: FlutterSlidableSample(),
  ),
  PackageModel(
    name: PackageNames.flutterSpinkitPackage,
    icon: Icons.cached,
    sample: FlutterSpinkitSample(),
  ),
  PackageModel(
    name: PackageNames.flutterSvgPackage,
    icon: Icons.image,
    sample: FlutterSvgSample(),
  ),
  PackageModel(
    name: PackageNames.fontAwesomeFlutterPackage,
    icon: Icons.circle_outlined,
    videoId: 'TOAyjIAsT7o',
    sample: FontAwesomeFlutterSample(),
  ),
  PackageModel(
    name: PackageNames.glassPackage,
    icon: Icons.blur_on,
    sample: GlassSample(),
  ),
  PackageModel(
    name: PackageNames.googleFontsPackage,
    icon: Icons.font_download_outlined,
    videoId: '8Vzv2CdbEY0',
    sample: GoogleFontsSamples(),
  ),
  PackageModel(
    name: PackageNames.httpPackage,
    icon: Icons.wifi,
    sample: HttpSample(),
  ),
  PackageModel(
    name: PackageNames.iconsPlusPackage,
    icon: Icons.circle_outlined,
    sample: IconsPlusSample(),
  ),
  PackageModel(
    name: PackageNames.infiniteScrollPaginationPackage,
    icon: Icons.swap_vert,
    sample: InfiniteScrollPaginationSample(),
  ),
  PackageModel(
    name: PackageNames.likeButtonPackage,
    icon: Icons.thumb_up,
    sample: LikeButtonSample(),
  ),
  PackageModel(
    name: PackageNames.loadingAnimationWidgetPackage,
    icon: Icons.cached,
    sample: LoadingAnimationWidgetSample(),
  ),
  PackageModel(
    name: PackageNames.loadingIndicatorPackage,
    icon: Icons.cached,
    sample: LoadingIndicatorSample(),
  ),
  PackageModel(
    name: PackageNames.mshCheckboxPackage,
    icon: Icons.check_box_outlined,
    sample: MshCheckboxSample(),
  ),
  PackageModel(
    name: PackageNames.salomonBottomBarPackage,
    icon: Icons.view_carousel,
    sample: SalomonBottomBarSample(),
  ),
  PackageModel(
    name: PackageNames.sharedPreferencesPackage,
    icon: Icons.storage,
    videoId: 'sa_U0jffQII',
    sample: SharedPreferencesSample(),
  ),
  PackageModel(
    name: PackageNames.sideSheetPackage,
    icon: Icons.view_sidebar_outlined,
    sample: SideSheetSample(),
  ),
  PackageModel(
    name: PackageNames.smoothPageIndicatorPackage,
    icon: Icons.view_carousel,
    videoId: 'sa_U0jffQII',
    sample: SmoothPageIndicatorSample(),
  ),
  PackageModel(
    name: PackageNames.toastificationPackage,
    icon: Icons.notifications,
    sample: ToastificationSample(),
  ),
  PackageModel(
    name: PackageNames.urlLauncherPackage,
    icon: Icons.link,
    videoId: 'qYxRYB1oszw',
    sample: UrlLauncherSample(),
  ),
  PackageModel(
    name: PackageNames.uuidPackage,
    icon: Icons.vpn_key,
    sample: UuidSample(),
  ),
];

Map<String, PackageSummaryModel> packagesMap() {
  Map<String, PackageSummaryModel> samples = {};
  
  for (var package in packages) {
    samples[package.name] = PackageSummaryModel(
      name: package.name,
      videoId: package.videoId,
      sample: package.sample,
    );
  }

  return samples;
}
