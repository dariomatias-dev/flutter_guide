import 'package:flutter/material.dart';

import 'package:flutter_guide/src/shared/models/doc_and_resources_model.dart';

const docsAndResources = <DocAndResourcesModel>[
  DocAndResourcesModel(
    name: 'Flutter Docs',
    icon: Icons.library_books,
    url: 'https://docs.flutter.dev/',
  ),
  DocAndResourcesModel(
    name: 'Dart Docs',
    icon: Icons.code,
    url: 'https://dart.dev/guides',
  ),
  DocAndResourcesModel(
    name: 'Dart Pad',
    icon: Icons.edit,
    url: 'https://dartpad.dev/',
  ),
  DocAndResourcesModel(
    name: 'pub.dev',
    icon: Icons.shop,
    url: 'https://pub.dev/',
  ),
  DocAndResourcesModel(
    name: 'Flutter Samples',
    icon: Icons.collections,
    url: 'https://flutter.github.io/samples/#',
  ),
];
