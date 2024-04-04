import 'package:flutter_guide/src/shared/models/component_model/component_model.dart';
import 'package:flutter_guide/src/shared/models/component_summary_mode/component_summary_mode.dart';

const packages = <PackageModel>[];

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
