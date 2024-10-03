import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:flutter_guide/src/shared/models/doc_and_resources_model.dart';

List<DocAndResourcesModel> getDocsAndResources(
  BuildContext context,
) {
  final appLocalizations = AppLocalizations.of(context)!;

  return <DocAndResourcesModel>[
    DocAndResourcesModel(
      name: appLocalizations.flutterDocs,
      icon: Icons.library_books,
      url: 'https://docs.flutter.dev/',
    ),
    DocAndResourcesModel(
      name: appLocalizations.dartDocs,
      icon: Icons.code,
      url: 'https://dart.dev/guides',
    ),
    const DocAndResourcesModel(
      name: 'Dart Pad',
      icon: Icons.edit,
      url: 'https://dartpad.dev/',
    ),
    DocAndResourcesModel(
      name: 'pub.dev - ${appLocalizations.packages}',
      icon: Icons.shop,
      url: 'https://pub.dev/',
    ),
    DocAndResourcesModel(
      name: appLocalizations.samples,
      icon: Icons.collections,
      url: 'https://flutter.github.io/samples/#',
    ),
  ];
}
