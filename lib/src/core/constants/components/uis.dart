import 'package:flutter_guide/src/shared/models/interface_model.dart';

// UIs
import 'package:flutter_guide/src/shared/widgets/interface_catalog/samples/uis/chat_screen_sample.dart';
import 'package:flutter_guide/src/shared/widgets/interface_catalog/samples/uis/emails_sample.dart';
import 'package:flutter_guide/src/shared/widgets/interface_catalog/samples/uis/login_screen_sample.dart';
import 'package:flutter_guide/src/shared/widgets/interface_catalog/samples/uis/login_with_background_screen_sample.dart';

const uis = <InterfaceModel>[
  InterfaceModel(
    name: 'Login Screen',
    component: LoginScreenSample(),
  ),
  InterfaceModel(
    name: 'Login Wit Background Screen',
    component: LoginWitBackgroundScreenSample(),
  ),
  InterfaceModel(
    name: 'Emails',
    component: EmailsSample(),
  ),
  InterfaceModel(
    name: 'Chat Screen',
    component: ChatScreenSample(),
  ),
];
