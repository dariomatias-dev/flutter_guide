import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

// Elements
import 'package:flutter_guide/src/shared/widgets/interface_catalog/samples/elements/configuring_dio_sample.dart';
import 'package:flutter_guide/src/shared/widgets/interface_catalog/samples/elements/custom_dropdown_sample.dart';
import 'package:flutter_guide/src/shared/widgets/interface_catalog/samples/elements/custom_popup_menu_sample.dart';
import 'package:flutter_guide/src/shared/widgets/interface_catalog/samples/elements/gaps_sample.dart';
import 'package:flutter_guide/src/shared/widgets/interface_catalog/samples/elements/image_loader_sample.dart';
import 'package:flutter_guide/src/shared/widgets/interface_catalog/samples/elements/infinite_grid_view_sample.dart';
import 'package:flutter_guide/src/shared/widgets/interface_catalog/samples/elements/loading_button_sample.dart';
import 'package:flutter_guide/src/shared/widgets/interface_catalog/samples/elements/loading_dialog_sample.dart';
import 'package:flutter_guide/src/shared/widgets/interface_catalog/samples/elements/loading_screen_sample.dart';
import 'package:flutter_guide/src/shared/widgets/interface_catalog/samples/elements/pagination_sample.dart';
import 'package:flutter_guide/src/shared/widgets/interface_catalog/samples/elements/password_field_sample.dart';

import 'package:flutter_guide/src/shared/models/interface_model.dart';

List<InterfaceModel> getElements(
  BuildContext context,
) {
  final appLocalizations = AppLocalizations.of(context)!;

  return <InterfaceModel>[
    InterfaceModel(
      name: appLocalizations.customPopupMenu,
      component: const CustomPopupMenuSample(),
    ),
    InterfaceModel(
      name: appLocalizations.customDropdown,
      component: const CustomDropdownSample(),
    ),
    InterfaceModel(
      name: appLocalizations.gaps,
      component: const GapsSample(),
    ),
    InterfaceModel(
      name: appLocalizations.passwordField,
      component: const PasswordFieldSample(),
    ),
    InterfaceModel(
      name: appLocalizations.loadingButton,
      component: const LoadingButtonSample(),
    ),
    InterfaceModel(
      name: appLocalizations.infiniteGridView,
      component: const InfiniteGridViewSample(),
    ),
    InterfaceModel(
      name: appLocalizations.pagination,
      component: const PaginationSample(),
    ),
    InterfaceModel(
      name: appLocalizations.configuringDio,
      component: const ConfiguringDioSample(),
    ),
    InterfaceModel(
      name: appLocalizations.loadingDialog,
      component: const LoadingDialogSample(),
    ),
    InterfaceModel(
      name: appLocalizations.loadingScreen,
      component: const LoadingScreenSample(),
    ),
    InterfaceModel(
      name: appLocalizations.imageLoader,
      component: const ImageLoaderSample(),
    ),
  ];
}
