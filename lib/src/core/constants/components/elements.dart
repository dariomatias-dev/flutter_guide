// Elements
import 'package:flutter_guide/src/shared/widgets/interface_catalog/samples/elements/configuring_dio_sample.dart';
import 'package:flutter_guide/src/shared/widgets/interface_catalog/samples/elements/custom_popup_menu_sample.dart';
import 'package:flutter_guide/src/shared/widgets/interface_catalog/samples/elements/gaps_sample.dart';
import 'package:flutter_guide/src/shared/widgets/interface_catalog/samples/elements/infinite_grid_view_sample.dart';
import 'package:flutter_guide/src/shared/widgets/interface_catalog/samples/elements/infinite_scroll_sample.dart';
import 'package:flutter_guide/src/shared/widgets/interface_catalog/samples/elements/loading_button_sample.dart';
import 'package:flutter_guide/src/shared/widgets/interface_catalog/samples/elements/pagination_sample.dart';
import 'package:flutter_guide/src/shared/widgets/interface_catalog/samples/elements/password_field_sample.dart';

import 'package:flutter_guide/src/shared/models/interface_model.dart';

const elements = <InterfaceModel>[
  InterfaceModel(
    name: 'Custom Popup Menu',
    component: CustomPopupMenuSample(),
  ),
  InterfaceModel(
    name: 'Gaps',
    component: GapsSample(),
  ),
  InterfaceModel(
    name: 'Password Field',
    component: PasswordFieldSample(),
  ),
  InterfaceModel(
    name: 'Loading Button',
    component: LoadingButtonSample(),
  ),
  InterfaceModel(
    name: 'Infinite Scroll',
    component: InfiniteScrollSample(),
  ),
  InterfaceModel(
    name: 'Infinite Grid View',
    component: InfiniteGridViewSample(),
  ),
  InterfaceModel(
    name: 'Pagination',
    component: PaginationSample(),
  ),
  InterfaceModel(
    name: 'Configuring Dio',
    component: ConfiguringDioSample(),
  ),
];
