import 'package:flutter/material.dart';

import 'package:flutter_guide/src/core/constants/package_names.dart';

// Samples
import 'package:flutter_guide/src/features/package/package_samples/dio_sample.dart';
import 'package:flutter_guide/src/features/package/package_samples/flutter_spinkit_sample.dart';
import 'package:flutter_guide/src/features/package/package_samples/flutter_svg_sample.dart';
import 'package:flutter_guide/src/features/package/package_samples/http_sample.dart';
import 'package:flutter_guide/src/features/package/package_samples/msh_checkbox_sample.dart';
import 'package:flutter_guide/src/features/package/package_samples/url_launcher_sample.dart';

// Models
import 'package:flutter_guide/src/shared/models/component_model/component_model.dart';
import 'package:flutter_guide/src/shared/models/component_summary_mode/component_summary_mode.dart';

const packages = <PackageModel>[
  PackageModel(
    name: PackageNames.dioPackage,
    icon: Icons.wifi,
    sample: DioSample(),
  ),
  PackageModel(
    name: PackageNames.flutterSpinkitPackage,
    icon: Icons.image,
    sample: FlutterSpinkitSample(),
  ),
  PackageModel(
    name: PackageNames.flutterSvgPackage,
    icon: Icons.autorenew,
    sample: FlutterSvgSample(),
  ),
  PackageModel(
    name: PackageNames.httpPackage,
    icon: Icons.wifi,
    sample: HttpSample(),
  ),
  PackageModel(
    name: PackageNames.urlLauncherPackage,
    icon: Icons.link,
    sample: UrlLauncherSample(),
  ),
  PackageModel(
    name: PackageNames.mshCheckboxPackage,
    icon: Icons.check_box_outlined,
    sample: MshCheckboxSample(),
  ),
];

Map<String, PackageSummaryModel> packagesMap() {
  Map<String, PackageSummaryModel> samples = {};
  for (PackageModel packages in packages) {
    samples[packages.name] = PackageSummaryModel(
      name: packages.name,
      sample: packages.sample,
    );
  }

  return samples;
}
