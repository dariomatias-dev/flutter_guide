// Examples
import 'package:flutter_guide/src/features/example/samples/custom_popup_menu_sample.dart';
import 'package:flutter_guide/src/features/example/samples/gaps_sample.dart';
import 'package:flutter_guide/src/features/example/samples/loading_button_sample.dart';
import 'package:flutter_guide/src/features/example/samples/password_field_sample.dart';

import 'package:flutter_guide/src/shared/models/element_model.dart';

const examples = <ElementModel>[
  ElementModel(
    name: 'Custom Popup Menu',
    component: CustomPopupMenuSample(),
  ),
  ElementModel(
    name: 'Gaps',
    component: GapsSample(),
  ),
  ElementModel(
    name: 'Password Field',
    component: PasswordFieldSample(),
  ),
  ElementModel(
    name: 'Loading Button',
    component: LoadingButtonSample(),
  ),
];
