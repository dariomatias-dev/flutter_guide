import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:flutter_guide/src/shared/models/interface_model.dart';

// UIs
import 'package:flutter_guide/src/shared/widgets/interface_catalog/samples/uis/chat_screen_sample.dart';
import 'package:flutter_guide/src/shared/widgets/interface_catalog/samples/uis/emails_sample.dart';
import 'package:flutter_guide/src/shared/widgets/interface_catalog/samples/uis/login_screen_sample.dart';
import 'package:flutter_guide/src/shared/widgets/interface_catalog/samples/uis/login_with_background_screen_sample.dart';

List<InterfaceModel> getUis(
  BuildContext context,
) {
  final appLocalizations = AppLocalizations.of(context)!;

  return <InterfaceModel>[
    InterfaceModel(
      name: appLocalizations.loginScreen,
      component: const LoginScreenSample(),
    ),
    InterfaceModel(
      name: appLocalizations.loginScreenWithBackgroundImage,
      component: const LoginWitBackgroundScreenSample(),
    ),
    InterfaceModel(
      name: appLocalizations.emailsApp,
      component: const EmailsSample(),
    ),
    InterfaceModel(
      name: appLocalizations.chatScreen,
      component: const ChatScreenSample(),
    ),
  ];
}
