// Examples
import 'package:flutter_guide/src/features/example/samples/custom_popup_menu_sample.dart';
import 'package:flutter_guide/src/features/example/samples/gaps_sample.dart';
import 'package:flutter_guide/src/features/example/samples/loading_button_sample.dart';
import 'package:flutter_guide/src/features/example/samples/password_field_sample.dart';

import 'package:flutter_guide/src/shared/models/example_model.dart';

const examples = <ExampleModel>[
  ExampleModel(
    name: 'Custom Popup Menu',
    component: CustomPopupMenuSample(),
  ),
  ExampleModel(
    name: 'Gaps',
    component: GapsSample(),
  ),
  ExampleModel(
    name: 'Password Field',
    component: PasswordFieldSample(),
  ),
  ExampleModel(
    name: 'Loading Button',
    component: LoadingButtonSample(),
  ),
];
